pipeline {
    agent any
    
    stages {

        stage("print") {
            steps {
                script {

                    echo "打印构建信息"

                    env.DS_DESCRIPTION = sh (script: 'git log -1 --pretty=%B ${GIT_COMMIT}', returnStdout: true).trim()

                    if (env.BRANCH_NAME == env.TAG_NAME) {
                        echo "当前 tag：" + env.TAG_NAME
                    }
                    else {
                        echo "当前分支：" + env.BRANCH_NAME
                    }

                    echo "当前提交：" + env.GIT_COMMIT
                    echo "工作目录：" + env.WORKSPACE
                    echo "提交描述：" + env.DS_DESCRIPTION
                }
            }
        }
    }
}
