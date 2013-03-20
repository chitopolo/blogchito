require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post :create, registration: { apoderado: @registration.apoderado, career: @registration.career, cellphone: @registration.cellphone, ci: @registration.ci, city: @registration.city, direction: @registration.direction, directionapoderado: @registration.directionapoderado, email: @registration.email, first: @registration.first, health: @registration.health, last2: @registration.last2, last: @registration.last, level: @registration.level, other: @registration.other, parentesco: @registration.parentesco, telephone: @registration.telephone, telephoneapoderado: @registration.telephoneapoderado, zona: @registration.zona }
    end

    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should show registration" do
    get :show, id: @registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration
    assert_response :success
  end

  test "should update registration" do
    put :update, id: @registration, registration: { apoderado: @registration.apoderado, career: @registration.career, cellphone: @registration.cellphone, ci: @registration.ci, city: @registration.city, direction: @registration.direction, directionapoderado: @registration.directionapoderado, email: @registration.email, first: @registration.first, health: @registration.health, last2: @registration.last2, last: @registration.last, level: @registration.level, other: @registration.other, parentesco: @registration.parentesco, telephone: @registration.telephone, telephoneapoderado: @registration.telephoneapoderado, zona: @registration.zona }
    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete :destroy, id: @registration
    end

    assert_redirected_to registrations_path
  end
end
