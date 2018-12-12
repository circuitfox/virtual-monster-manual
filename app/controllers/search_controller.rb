class SearchController < ApplicationController
  def index
    @creatures = Creature::all
    render :index
  end

  def search
    render :search
  end

  def run_search
    @creatures = Creature.search({ name: params[:query] })
    j render :index, layout: false
  end

  def advanced_search
    attrs = search_params.except(
      :utf8,
      :authenticity_token,
      :commit,
      :controller,
      :action
    )
    logger.debug attrs.to_yaml
    where_clause = attrs.to_h.map { |k, v| where_like(v, k) }.to_h
    logger.debug where_clause.inspect
    sql = where_clause.keys.reject(&:blank?).join(" AND ")
    data = where_clause.values.flatten
    logger.debug sql.inspect
    logger.debug data.inspect
    @creatures = Creature.left_outer_joins(
      :creature_actions,
      :abilities,
      :skills,
      :spells,
      :damage_resistances,
      :damage_vulnerabilities,
      :damage_immunities,
      :condition_immunities,
      :languages
    ).where(sql, *data).distinct
    j render :index, layout: false
  end

  private

    def where_like(attrs, table = "")
      if !table.blank?
        table = "`" + table + "`" + "."
      end
      logger.debug attrs.to_yaml
      likes = []
      data = []
      attrs.each_pair { |(key, query)|
        if table === "`creatures`."
          if key === "type"
            query = Creature.types[query]
          elsif key === "size"
            query = Creature.sizes[query]
          end
        end
        if !query.blank?
          likes << "#{table}`#{key}` LIKE ?"
          data << "%#{query}%"
        end
      }
      sql = likes.join(" AND ")
      return sql, data
    end

    def search_params
      params.permit(
        :utf8,
        :authentication_token,
        :commit,
        creatures: {},
        creature_actions: {},
        abilities: {},
        skills: {},
        spells: {},
        damage_resistances: {},
        damage_vulnerabilities: {},
        damage_immunities: {},
        condition_immunities: {},
        languages: {}
      )
    end
end
