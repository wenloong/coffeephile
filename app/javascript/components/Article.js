/*
Use this as a reference for now
*/
import React from "react"
import PropTypes from "prop-types"
class Article extends React.Component {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

Article.propTypes = {
  greeting: PropTypes.string
};
export default Article
