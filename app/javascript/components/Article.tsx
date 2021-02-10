import * as React from 'react'

const avatar = require('./../../assets/images/avatar.jpg')
const heartSVG = require('./../../assets/images/heart.svg')
const commentSVG = require('./../../assets/images/comment.svg')

interface Article {
  img: String
  username: String
  title: String
  post: String
  numLikes: Number
  numComments: Number
  datePosted: Date
}

function getPostedTime(datePosted): String {
  let current = new Date()
  let currentYear = current.getFullYear()
  let currentMonth = current.getUTCMonth() + 1
  let currentDate = current.getUTCDate()
  let currentHour = current.getUTCHours()
  let currentMinute = current.getUTCMinutes()

  let postedDate = datePosted.split(/[T:-]/)
  // In the Format of YYYY-MM-DDTHH:MM.SSSZ
  /*
    Remember to do test case for international time.
    current will take the system's current time, but we might
    need to convert it to match the database's timezone
  */

  console.log(currentDate);
  console.log(postedDate);
  if (postedDate[0] != currentYear) {
    return (currentYear - postedDate[0]) + " years ago"
  } else if (postedDate[1] != currentMonth) {
    return (currentMonth - postedDate[1]) + " months ago"
  } else if (postedDate[2] != currentDate) {
    return (currentDate - postedDate[2]) + " days ago"
  } else if (postedDate[3] != currentHour) {
    return (currentHour - postedDate[3]) + " hours ago"
  } else if (postedDate[4] != currentMinute) {
    return (currentMinute - postedDate[4]) + " minutes ago"
  } else {
    return "Just now"
  }
}

function truncateNumber(num): String {
  if (num < 1e3) return num;
  if (num >= 1e3 && num < 1e6) return + (num / 1e3).toFixed(1) + "K";
  if (num >= 1e6 && num < 1e9) return +( num / 1e6).toFixed(1) + "M";
  if (num >= 1e9 && num < 1e12) return + (num / 1e9).toFixed(1) + "B";
  if (num >= 1e12) return + (num / 1e12).toFixed(1) + "T";
}

const Article = ({username, img, title, post, numLikes, numComments, datePosted}: Article) => {
  let truncatedLikes = truncateNumber(numLikes)
  let truncatedComments = truncateNumber(numComments)
  let lastPostedAt = getPostedTime(datePosted)

  return (
    <React.Fragment>
      <div className="Article__wrapper">
        <div className="Article__img">
          <img src={avatar}/>
        </div>
        <div className="Article__container">
          <div className="Article__username">
            <p>Posted by {username}</p>
          </div>
          <div className="Article__title">
            <p>{title}</p>
          </div>
          <div className="Article__post">
            <p>{post}</p>
          </div>
          <div className="Article__info">
            <div className="Article__stats">
              <div className="Article__numLikes">
                <img src={heartSVG}/>
                <p>{truncatedLikes}</p>
              </div>
              <div className="Article__numComments">
                <img src={commentSVG}/>
                <p>{truncatedComments} Comments</p>
              </div>
            </div>

            <div className="Article__date">
              <p>{lastPostedAt}</p>
            </div>
          </div>
        </div>
      </div>
    </React.Fragment>
  )
}

export default Article
