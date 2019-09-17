
    #!/bin/bash

    echo name of react app?
    read name
    echo making the $name project...
    mkdir -p $name
    sleep 1
    cd $name
    echo building app in $PWD
    mkdir public src dist __test__
    touch .gitignore .babelrc webpack.config.js jest.config.js
    npm init

    npm install --save-dev npm install --save-dev babel-core@6.26.3 babel-cli@6.26.0 babel-preset-env@1.7.0 babel-preset-react@6.24.1 webpack@4.12.0 webpack-cli@3.0.8 webpack-dev-server@3.1.4 style-loader@0.21.0 css-loader@0.28.11 babel-loader@7.1.4 react@16.4.1 react-dom@16.4.2 jest@22.4.4 babel-jest@23.4.0 react-hot-loader@4.3.3
