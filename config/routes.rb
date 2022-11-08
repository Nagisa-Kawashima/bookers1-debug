Rails.application.routes.draw do
  # get 'students/index'
  # get 'students/show'
  # get 'students/edit'
  # get 'students/new'
  namespace :admin do
    resources :items
  end
  adminというフォルダは自身で作る必要がある


  scope module: :school do
    scope module: :classroom do
      resources :students
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


# namespaceは「URI Pattern」と「Controller#Action」
# の2つを同時にカスタマイズしたい場合に使用します。
# namespace :school do
#     namespace :classroom do
#       resources :students
#     end
#   end


# amespaceを使用する時は、
# グループ名で名付けられたフォルダの中にコードファイルが入っている必要があるため
# コントローラを作成する時には必ず、グループ名をコントローラー名の前につけましょう。

# コマンド実行ルール
# username:~/environment/naganocake $ rails g controller
# [namespaceのグループ名]/[コントローラー名]



# scopeは「URI Pattern」のみカスタマイズしたい場合に使用します。
# また「URI Pattern」のみをschool/classrooms/studentsにしたい場合は
# 、scopeをネストすることで実現できます
# 。ファイル構成は変わらずstudentsコントローラになります。

# scope :school do
#     scope :classroom do
#       resources :students
#     end
#   end



# module（scope module）は
# 「Controller#Action」のみカスタマイズしたい場合に使用します。