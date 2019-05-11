{
  "name": "@serpent/template",
  "version": "0.0.0",
  "description": "serpent template",
  "keywords": [
    "serpent",
    "template"
  ],
  "sideEffects": false,
  "license": "GPL-2.0",
  "eslintConfig": {
    "env": {
      "node": false,
      "browser": false
    },
    "extends": [
      "./node_modules/@serpent/dev-kits/.eslintrc"
    ],
    "parserOptions": {
      "ecmaVersion": 2018,
      "sourceType": "module",
      "project": "./tsconfig.json"
    }
  },
  "eslintIgnore": [
    "dist",
    "coverage"
  ],
  "prettier": {
    "printWidth": 100,
    "tabWidth": 2,
    "useTabs": false,
    "semi": false,
    "singleQuote": true,
    "trailingComma": "none",
    "bracketSpacing": true,
    "jsxBracketSameLine": false,
    "endOfLine": "lf",
    "arrowParens": "avoid",
    "jsxSingleQuote": true
  },
  "scripts": {
    "clean": "serpent clean",
    "test": "serpent jest",
    "lint": "eslint --ext .ts,.tsx ./src",
    "precheck": "npm run lint && npm run test",
    "build": "tsc",
    "build:watch": "tsc -w",
    "index": "serpent index",
    "prepare": "npm run precheck && npm run clear && npm run build && npm run index"
  },
  "author": "Mora <qiuzhongleiabc@126.com> (https://github.com/qiu8310)",
  "repository": {
    "type": "git",
    "url": "https://github.com/qiu8310/serpent"
  },
  "devDependencies": {
    "@serpent/cli": "0.0.1",
    "@serpent/dev-kits": "0.0.3"
  }
}
