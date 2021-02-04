import React from "react"
import PropTypes from "prop-types"

class BackgroundFiller extends React.Component {
  render () {
    return (
      <React.Fragment>
        <div className={`BackgroundFiller ${this.props.BackgroundFillerStyle}`}>
            <div className="BackgroundFiller__header">
                <p>{this.props.header}</p>
            </div>
            <div className="BackgroundFiller__desc">
                <p>{this.props.desc}</p>
            </div>
        </div>
      </React.Fragment>
    );
  }
}

BackgroundFiller.propTypes = {
    BackgroundFillterStyle: PropTypes.string,
    header: PropTypes.string,
    desc: PropTypes.string
};

export default BackgroundFiller
