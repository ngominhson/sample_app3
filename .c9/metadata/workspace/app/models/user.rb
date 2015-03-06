{"filter":false,"title":"user.rb","tooltip":"/app/models/user.rb","undoManager":{"mark":47,"position":47,"stack":[[{"group":"doc","deltas":[{"start":{"row":1,"column":2},"end":{"row":2,"column":33},"action":"remove","lines":["attr_accessor :remember_token","  before_save { email.downcase! }"]},{"start":{"row":1,"column":2},"end":{"row":3,"column":41},"action":"insert","lines":["attr_accessor :remember_token, :activation_token","  before_save   :downcase_email","  before_create :create_activation_digest"]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":5},"end":{"row":40,"column":0},"action":"insert","lines":["",""]},{"start":{"row":40,"column":0},"end":{"row":40,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":40,"column":2},"end":{"row":41,"column":0},"action":"insert","lines":["",""]},{"start":{"row":41,"column":0},"end":{"row":41,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":2},"end":{"row":43,"column":7},"action":"insert","lines":["def downcase_email","      self.email = email.downcase","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":43,"column":2},"end":{"row":43,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":42,"column":4},"end":{"row":42,"column":6},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":43,"column":5},"end":{"row":44,"column":0},"action":"insert","lines":["",""]},{"start":{"row":44,"column":0},"end":{"row":44,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":44,"column":2},"end":{"row":45,"column":0},"action":"insert","lines":["",""]},{"start":{"row":45,"column":0},"end":{"row":45,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":45,"column":2},"end":{"row":49,"column":7},"action":"insert","lines":["# Creates and assigns the activation token and digest.","    def create_activation_digest","      self.activation_token  = User.new_token","      self.activation_digest = User.digest(activation_token)","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":46,"column":0},"end":{"row":46,"column":2},"action":"remove","lines":["  "]},{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"remove","lines":["  "]},{"start":{"row":48,"column":0},"end":{"row":48,"column":2},"action":"remove","lines":["  "]},{"start":{"row":49,"column":0},"end":{"row":49,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":2},"end":{"row":34,"column":5},"action":"remove","lines":["def authenticated?(remember_token)","  \treturn false if remember_digest.nil?","    BCrypt::Password.new(remember_digest).is_password?(remember_token)","  end"]},{"start":{"row":31,"column":2},"end":{"row":35,"column":5},"action":"insert","lines":["def authenticated?(attribute, token)","    digest = send(\"#{attribute}_digest\")","    return false if digest.nil?","    BCrypt::Password.new(digest).is_password?(token)","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":50,"column":5},"end":{"row":51,"column":0},"action":"insert","lines":["",""]},{"start":{"row":51,"column":0},"end":{"row":51,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":51,"column":2},"end":{"row":52,"column":0},"action":"insert","lines":["",""]},{"start":{"row":52,"column":0},"end":{"row":52,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":52,"column":2},"end":{"row":55,"column":5},"action":"insert","lines":["def activate","    update_attribute(:activated,    true)","    update_attribute(:activated_at, Time.zone.now)","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":5},"end":{"row":56,"column":0},"action":"insert","lines":["",""]},{"start":{"row":56,"column":0},"end":{"row":56,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":56,"column":2},"end":{"row":57,"column":0},"action":"insert","lines":["",""]},{"start":{"row":57,"column":0},"end":{"row":57,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":2},"end":{"row":59,"column":5},"action":"insert","lines":["def send_activation_email","    UserMailer.account_activation(self).deliver_now","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":2},"end":{"row":1,"column":50},"action":"remove","lines":["attr_accessor :remember_token, :activation_token"]},{"start":{"row":1,"column":2},"end":{"row":1,"column":64},"action":"insert","lines":["attr_accessor :remember_token, :activation_token, :reset_token"]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":5},"end":{"row":60,"column":0},"action":"insert","lines":["",""]},{"start":{"row":60,"column":0},"end":{"row":60,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":60,"column":2},"end":{"row":61,"column":0},"action":"insert","lines":["",""]},{"start":{"row":61,"column":0},"end":{"row":61,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":61,"column":2},"end":{"row":65,"column":5},"action":"insert","lines":["  def create_reset_digest","    self.reset_token = User.new_token","    update_attribute(:reset_digest,  User.digest(reset_token))","    update_attribute(:reset_sent_at, Time.zone.now)","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":5},"end":{"row":66,"column":0},"action":"insert","lines":["",""]},{"start":{"row":66,"column":0},"end":{"row":66,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":2},"end":{"row":67,"column":0},"action":"insert","lines":["",""]},{"start":{"row":67,"column":0},"end":{"row":67,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":61,"column":2},"end":{"row":61,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":2},"end":{"row":67,"column":0},"action":"insert","lines":["",""]},{"start":{"row":67,"column":0},"end":{"row":67,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":67,"column":2},"end":{"row":69,"column":5},"action":"insert","lines":["def send_password_reset_email","    UserMailer.password_reset(self).deliver_now","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":5},"end":{"row":70,"column":0},"action":"insert","lines":["",""]},{"start":{"row":70,"column":0},"end":{"row":70,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":70,"column":2},"end":{"row":71,"column":0},"action":"insert","lines":["",""]},{"start":{"row":71,"column":0},"end":{"row":71,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":71,"column":2},"end":{"row":82,"column":7},"action":"insert","lines":["private","","    # Converts email to all lower-case.","    def downcase_email","      self.email = email.downcase","    end","","    # Creates and assigns the activation token and digest.","    def create_activation_digest","      self.activation_token  = User.new_token","      self.activation_digest = User.digest(activation_token)","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":5},"end":{"row":70,"column":0},"action":"insert","lines":["",""]},{"start":{"row":70,"column":0},"end":{"row":70,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":70,"column":2},"end":{"row":71,"column":0},"action":"insert","lines":["",""]},{"start":{"row":71,"column":0},"end":{"row":71,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":71,"column":2},"end":{"row":73,"column":5},"action":"insert","lines":["def password_reset_expired?","    reset_sent_at < 2.hours.ago","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":5},"end":{"row":73,"column":6},"action":"insert","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":6},"end":{"row":73,"column":7},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":7},"end":{"row":73,"column":8},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":7},"end":{"row":73,"column":8},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":6},"end":{"row":73,"column":7},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":5},"end":{"row":73,"column":6},"action":"remove","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":52,"column":2},"end":{"row":55,"column":5},"action":"remove","lines":["def activate","    update_attribute(:activated,    true)","    update_attribute(:activated_at, Time.zone.now)","  end"]},{"start":{"row":52,"column":2},"end":{"row":55,"column":5},"action":"insert","lines":["# Activates an account.","  def activate","    update_columns(activated: FILL_IN, activated_at: FILL_IN)","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":63,"column":4},"end":{"row":64,"column":51},"action":"remove","lines":["update_attribute(:reset_digest,  User.digest(reset_token))","    update_attribute(:reset_sent_at, Time.zone.now)"]},{"start":{"row":63,"column":4},"end":{"row":64,"column":42},"action":"insert","lines":["update_columns(reset_digest:  FILL_IN,","                   reset_sent_at: FILL_IN)"]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":42},"end":{"row":64,"column":43},"action":"insert","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":43},"end":{"row":64,"column":44},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":44},"end":{"row":64,"column":45},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":45},"end":{"row":64,"column":46},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":45},"end":{"row":64,"column":46},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":44},"end":{"row":64,"column":45},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":43},"end":{"row":64,"column":44},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":42},"end":{"row":64,"column":43},"action":"remove","lines":["g"]}]}]]},"ace":{"folds":[],"scrolltop":855.5,"scrollleft":0,"selection":{"start":{"row":64,"column":42},"end":{"row":64,"column":42},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":56,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1425696552499,"hash":"58019d1c9e1f394c8050465abb1271397a4f2ac2"}