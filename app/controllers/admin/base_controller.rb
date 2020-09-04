module Admin
  class BaseController < ApplicationController
    include Pundit

    rescue_from Pun