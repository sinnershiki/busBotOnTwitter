# Description:
#   kitiな籤を引ける
#
# Commands:
#   kitikuji + ユーザ名で煽りを1/2の確率で吐く
#   特定のユーザが使うと、問答無用で煽りを1/2で吐く。多分。
#   kitikuji だけで使えなくなったのはどう考えてもcoffee scriptが悪い

module.exports = (robot) ->
    robot.respond /kitikuji (.*)/i, (msg) ->

        name = msg.match[1]
        omikuji = ["大kiti","中kiti","kiti","末kiti","凶","大凶"]

        results = {
            'KHryuzen' : 'ハゲ'
            'sinner_real' : '進捗どうですか'
            'sa_son_' : 'ゴーレム（レア！）'
            'Akashi_K' : '大吉'
            'gitchaaan' : 'お祈り'
            'umr00' : '10月'
        }

        if flag = Math.floor(Math.random()*2)
            result = results[msg.message.user.name]
            result = results[name]

        if !(result)
            console.log result = omikuji[Math.floor(Math.random() * 6)]

        msg.reply "#{result}です．"
