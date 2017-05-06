require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post :create, candidate: { education_gap: @candidate.education_gap, github: @candidate.github, highest_degree: @candidate.highest_degree, linkedin: @candidate.linkedin, marks: @candidate.marks, mobile: @candidate.mobile, name: @candidate.name, specialization: @candidate.specialization, stackoverflow: @candidate.stackoverflow, total_experience: @candidate.total_experience, work_gap: @candidate.work_gap, work_summary: @candidate.work_summary }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should show candidate" do
    get :show, id: @candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "should update candidate" do
    patch :update, id: @candidate, candidate: { education_gap: @candidate.education_gap, github: @candidate.github, highest_degree: @candidate.highest_degree, linkedin: @candidate.linkedin, marks: @candidate.marks, mobile: @candidate.mobile, name: @candidate.name, specialization: @candidate.specialization, stackoverflow: @candidate.stackoverflow, total_experience: @candidate.total_experience, work_gap: @candidate.work_gap, work_summary: @candidate.work_summary }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
