import Vue from 'vue'
import Router from 'vue-router'
import Home from 'components/home/home'
import Destination from 'components/destination/destination'
import Dif from 'components/destination-information/destination-information'
import TravelNodes from 'components/travelNodes/travelNodes'
import Travels from 'components/travels/travels'
import TourismFunds from 'components/tourismFunds/tourismFunds'
import FindCompanion from 'components/findCompanion/findCompanion'
import FindTraveller from 'components/findTraveller/findTraveller'
import Login from 'components/login/login'
import Regist from 'components/regist/regist'
import Center from 'components/center/center'
import set from 'components/set/set'
import publicActive from 'components/publicActive/publicActive'
import Write from 'components/write/write'
import Search from 'components/search/search'
import ActiveInfo from 'components/active-information/active-information'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/', 
      redirect: '/home'
    },
    {
      path: '/home',
      name: 'Home',
      component: Home,
      alias: '/:id/home'
    },
    {
      path: '/travels',
      name: 'Travels',
      component: Travels,
      alias: '/:id/travels'
    },
    {
      path: '/tourismFunds',
      name: 'TourismFunds',
      component: TourismFunds,
      alias: '/:id/tourismFunds'
    },
    {
      path: '/findTraveller',
      name: 'FindTraveller',
      component: FindTraveller,
      alias: '/:id/findTraveller'
    },
    {
      path: '/login',
      name: 'Login',
      component: Login,
      alias: '/:id/login'
    },
    {
      path: '/regist',
      name: 'Regist',
      component: Regist,
      alias: '/:id/regist'
    },
    {
      path: '/set',
      name: 'set',
      component: set,
      alias: '/:id/set'
    },
    {
      path: '/center',
      name: 'center',
      component: Center,
      alias: '/:id/center'
    },
    {
      path: '/publicActive',
      name: 'publicActive',
      component: publicActive,
      alias: '/:id/publicActive'
    },
    
    {
      path: '/search',
      name: 'Search',
      component: Search,
      alias: '/:id/search'
    },
    {
      path: '/Write',
      name: 'Write',
      component: Write,
      alias: '/:id/Write'
    },
    {
      path: '/center/center',
      redirect: '/center',
    },
    {
      path: '/destination/findCompanion',
      redirect: '/findCompanion'
    },
    {
      path: '/destination/destination',
      redirect: '/destination'
    },
    {
      path: '/center/findCompanion',
      redirect: '/findCompanion'
    },
    {
      path: '/center/destination',
      redirect: '/destination'
    },
    {
      path: '/findCompanion/findCompanion',
      redirect: '/findCompanion'
    },
    {
      path: '/findCompanion/destination',
      redirect: '/destination'
    },
    {
      path: '/center/:id',
      name :'center',
      component: Center,
      alias: '/:id/center'
    },
    {
      path: '/findCompanion',
      name: 'FindCompanion',
      component: FindCompanion,
      alias: '/:id/findCompanion',
      children: [
        {
          path: ':id',
          name: 'ActiveInfo',
          component: ActiveInfo,
        }
      ]
    },
    {
      path: '/destination',
      name: 'Destination',
      component: Destination,
      alias: '/:id/destination',
      children: [ // 子组件需要在父组件中添加<router-view/>才能够实现显示
        {
          path: ':uid',
          name: 'dif',
          component: Dif,
        }
      ]
    },
    {
      path: '/:id',
      name: 'travelNode',
      component: TravelNodes,
      alias: '/:id/:id'
    }
  ]
})
