import React, { useState } from 'react'

export default function EmbedPlayground() {
  const [host, setHost] = useState("https://qeck.linwood.dev")
  const [save, setSave] = useState(true)
  const [editable, setEditable] = useState(true)
  const [language, setLanguage] = useState("system")
  const url = `${host}/embed?save=${save}&editable=${editable}&language=${language}`;
  return (
    <div>
      <div className="input-group">
        <label htmlFor="language">Host</label>
        <input className="input" type="text" value={host} id="language" onChange={(e) => setHost(e.target.value)} />
      </div>
      <label className="checkbox">Save
        <input type="checkbox" checked={save} id="save" onChange={() => setSave(!save)} />
        <span className="checkbox-checkmark"></span>
      </label>
      <label className="checkbox">Editable
        <input type="checkbox" checked={editable} id="editable" onChange={() => setEditable(!editable)} />
        <span className="checkbox-checkmark"></span>
      </label>
      <div className="input-group">
        <label htmlFor="language">Language</label>
        <input className="input" type="text" value={language} id="language" onChange={(e) => setLanguage(e.target.value)} />
      </div>
      <h2 className="padding-top--lg padding-bottom--sm">Preview</h2>
      <iframe src={url} width="100%" height="500px" allowTransparency={true}></iframe>
      <div className="input-group">
        <label htmlFor="url">Generated url</label>
        <input className="input" readOnly type="text" value={url} id="url" />
      </div>
    </div>
  )
}