require 'test_helper'

class CreaturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creature = creatures(:zombie)
  end

  test "should get index" do
    get creatures_url
    assert_response :success
  end

  test "should get new" do
    get new_creature_url
    assert_response :success
  end

  test "should create creature" do
    new_creature = @creature.as_json.except(:id, :created_at, :updated_at)
    assert_difference('Creature.count') do
      post creatures_url, params: { creature: new_creature }
    end

    assert_redirected_to creature_url(Creature.last)
  end

  test "should show creature" do
    get creature_url(@creature)
    assert_response :success
  end

  test "should get edit" do
    get edit_creature_url(@creature)
    assert_response :success
  end

  test "should update creature" do
    update_creature = @creature.as_json.except(:id, :created_at, :updated_at)
    update_creature[:name] = "Greater Zombie"
    patch creature_url(@creature), params: { creature: update_creature }
    assert_redirected_to creature_url(@creature)
    @creature.reload
    assert_equal("Greater Zombie", @creature.name)
  end

  test "should destroy creature" do
    assert_difference('Creature.count', -1) do
      delete creature_url(@creature)
    end

    assert_redirected_to creatures_url
  end
end
test "search method is available" do
  assert CreaturesController.repond_to?(:search)
end
test "should search" do
  assert_equal 0, CreaturesController.search("creatures").size
  assert_equal 1, CreaturesController.search("skills").size
  assert_equal 2, CreaturesController.search("spells").size
  assert_equal 3, CreaturesController.search("actions").size
  assert_equal 4, CreaturesController.search("abilities").size

end
