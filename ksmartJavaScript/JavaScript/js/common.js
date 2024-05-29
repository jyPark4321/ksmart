/**
 * Cookie
 * document.cookie로 쿠키 생성
 * 옵션
 * expires=날짜정보(만료일자); //지금현재 기준으로
 * path=주소 // 내 웹 주소설정
 * // 도메인을 설정할 경우 해당 사이트외에 쿠기 얻을 수 없음
 * // 설정안할 시 현재 도메인을 설정
 * domain=특정도메인(naver.com) 
 *                             
 * secure=secure //설정할 경우 https 프로토콜에서만 접근가능
 * 
 * ex)
 * document.cookie = 'userId=id001; expires=만료일자; path=/; domain=domain; secure;'; 
 */

/**
 * 팝업창 일정 기간 동안 유지하는 쿠키 함수
 * @param {*} 저장하려는 key 
 * @param {*} 저장하려는 value
 * @param {*} 기간 (정수)
 */
function setCookie(name, value, exDate) {
    let expiresDate = new Date();
    expiresDate.setTime(expiresDate.getTime() + (1000*60*60*24*exDate));
    options = {
      path: '/',
      // 필요한 경우, 옵션 기본값을 설정할 수도 있습니다.
      expires: expiresDate
    };
  
    if (options.expires instanceof Date) {
      options.expires = options.expires.toUTCString();
    }
  
    let updatedCookie = encodeURIComponent(name) + "=" + encodeURIComponent(value);
  
    for (let optionKey in options) {
      updatedCookie += "; " + optionKey;
      let optionValue = options[optionKey];
      if (optionValue !== true) {
        updatedCookie += "=" + optionValue;
      }
    }
    console.log(updatedCookie);
    document.cookie = updatedCookie;
  }
  
  /**
   * 쿠키의 값을 가져오는 함수
   * @param {*} 쿠키값을 저장한 key 
   * @returns 쿠키값 (없을 시에는 undefined)
   */
  function getCookie(name) {
    let matches = document.cookie.match(new RegExp(
      "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
    ));
    return matches ? decodeURIComponent(matches[1]) : undefined;
  }