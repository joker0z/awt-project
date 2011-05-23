require 'test_helper'

class TaskDocumentsControllerTest < ActionController::TestCase
  setup do
    @task_document = task_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_document" do
    assert_difference('TaskDocument.count') do
      post :create, :task_document => @task_document.attributes
    end

    assert_redirected_to task_document_path(assigns(:task_document))
  end

  test "should show task_document" do
    get :show, :id => @task_document.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @task_document.to_param
    assert_response :success
  end

  test "should update task_document" do
    put :update, :id => @task_document.to_param, :task_document => @task_document.attributes
    assert_redirected_to task_document_path(assigns(:task_document))
  end

  test "should destroy task_document" do
    assert_difference('TaskDocument.count', -1) do
      delete :destroy, :id => @task_document.to_param
    end

    assert_redirected_to task_documents_path
  end
end
