using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Csv_db
{
    #region Data
    public class Data
    {
        #region Member Variables
        protected string _COL;
        protected string _COL;
        protected string _COL;
        protected string _COL;
        protected string _COL;
        #endregion
        #region Constructors
        public Data() { }
        public Data(string COL, string COL, string COL, string COL, string COL)
        {
            this._COL=COL;
            this._COL=COL;
            this._COL=COL;
            this._COL=COL;
            this._COL=COL;
        }
        #endregion
        #region Public Properties
        public virtual string COL
        {
            get {return _COL;}
            set {_COL=value;}
        }
        public virtual string COL
        {
            get {return _COL;}
            set {_COL=value;}
        }
        public virtual string COL
        {
            get {return _COL;}
            set {_COL=value;}
        }
        public virtual string COL
        {
            get {return _COL;}
            set {_COL=value;}
        }
        public virtual string COL
        {
            get {return _COL;}
            set {_COL=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Api_key
    public class Api_key
    {
        #region Member Variables
        protected string _id;
        protected int _owner_id;
        protected string _label;
        protected string _credential_hash;
        protected unknown _last_ip;
        protected DateTime _last_accessed;
        protected DateTime _created;
        #endregion
        #region Constructors
        public Api_key() { }
        public Api_key(int owner_id, string label, string credential_hash, unknown last_ip, DateTime last_accessed, DateTime created)
        {
            this._owner_id=owner_id;
            this._label=label;
            this._credential_hash=credential_hash;
            this._last_ip=last_ip;
            this._last_accessed=last_accessed;
            this._created=created;
        }
        #endregion
        #region Public Properties
        public virtual string Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Owner_id
        {
            get {return _owner_id;}
            set {_owner_id=value;}
        }
        public virtual string Label
        {
            get {return _label;}
            set {_label=value;}
        }
        public virtual string Credential_hash
        {
            get {return _credential_hash;}
            set {_credential_hash=value;}
        }
        public virtual unknown Last_ip
        {
            get {return _last_ip;}
            set {_last_ip=value;}
        }
        public virtual DateTime Last_accessed
        {
            get {return _last_accessed;}
            set {_last_accessed=value;}
        }
        public virtual DateTime Created
        {
            get {return _created;}
            set {_created=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Asset
    public class Asset
    {
        #region Member Variables
        protected int _id;
        protected int _owner_id;
        protected string _name;
        protected string _media_type;
        protected string _storage_id;
        protected string _extension;
        #endregion
        #region Constructors
        public Asset() { }
        public Asset(int owner_id, string name, string media_type, string storage_id, string extension)
        {
            this._owner_id=owner_id;
            this._name=name;
            this._media_type=media_type;
            this._storage_id=storage_id;
            this._extension=extension;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Owner_id
        {
            get {return _owner_id;}
            set {_owner_id=value;}
        }
        public virtual string Name
        {
            get {return _name;}
            set {_name=value;}
        }
        public virtual string Media_type
        {
            get {return _media_type;}
            set {_media_type=value;}
        }
        public virtual string Storage_id
        {
            get {return _storage_id;}
            set {_storage_id=value;}
        }
        public virtual string Extension
        {
            get {return _extension;}
            set {_extension=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Fulltext_search
    public class Fulltext_search
    {
        #region Member Variables
        protected int _id;
        protected string _resource;
        protected int _owner_id;
        protected bool _is_public;
        protected string _title;
        protected string _text;
        #endregion
        #region Constructors
        public Fulltext_search() { }
        public Fulltext_search(int owner_id, bool is_public, string title, string text)
        {
            this._owner_id=owner_id;
            this._is_public=is_public;
            this._title=title;
            this._text=text;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Resource
        {
            get {return _resource;}
            set {_resource=value;}
        }
        public virtual int Owner_id
        {
            get {return _owner_id;}
            set {_owner_id=value;}
        }
        public virtual bool Is_public
        {
            get {return _is_public;}
            set {_is_public=value;}
        }
        public virtual string Title
        {
            get {return _title;}
            set {_title=value;}
        }
        public virtual string Text
        {
            get {return _text;}
            set {_text=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Item
    public class Item
    {
        #region Member Variables
        protected int _id;
        #endregion
        #region Constructors
        public Item() { }
        public Item()
        {
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Item_item_set
    public class Item_item_set
    {
        #region Member Variables
        protected int _item_id;
        protected int _item_set_id;
        #endregion
        #region Constructors
        public Item_item_set() { }
        public Item_item_set()
        {
        }
        #endregion
        #region Public Properties
        public virtual int Item_id
        {
            get {return _item_id;}
            set {_item_id=value;}
        }
        public virtual int Item_set_id
        {
            get {return _item_set_id;}
            set {_item_set_id=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Item_set
    public class Item_set
    {
        #region Member Variables
        protected int _id;
        protected bool _is_open;
        #endregion
        #region Constructors
        public Item_set() { }
        public Item_set(bool is_open)
        {
            this._is_open=is_open;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual bool Is_open
        {
            get {return _is_open;}
            set {_is_open=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Job
    public class Job
    {
        #region Member Variables
        protected int _id;
        protected int _owner_id;
        protected string _pid;
        protected string _status;
        protected string _class;
        protected string _args;
        protected string _log;
        protected DateTime _started;
        protected DateTime _ended;
        #endregion
        #region Constructors
        public Job() { }
        public Job(int owner_id, string pid, string status, string class, string args, string log, DateTime started, DateTime ended)
        {
            this._owner_id=owner_id;
            this._pid=pid;
            this._status=status;
            this._class=class;
            this._args=args;
            this._log=log;
            this._started=started;
            this._ended=ended;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Owner_id
        {
            get {return _owner_id;}
            set {_owner_id=value;}
        }
        public virtual string Pid
        {
            get {return _pid;}
            set {_pid=value;}
        }
        public virtual string Status
        {
            get {return _status;}
            set {_status=value;}
        }
        public virtual string Class
        {
            get {return _class;}
            set {_class=value;}
        }
        public virtual string Args
        {
            get {return _args;}
            set {_args=value;}
        }
        public virtual string Log
        {
            get {return _log;}
            set {_log=value;}
        }
        public virtual DateTime Started
        {
            get {return _started;}
            set {_started=value;}
        }
        public virtual DateTime Ended
        {
            get {return _ended;}
            set {_ended=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Media
    public class Media
    {
        #region Member Variables
        protected int _id;
        protected int _item_id;
        protected string _ingester;
        protected string _renderer;
        protected string _data;
        protected string _source;
        protected string _media_type;
        protected string _storage_id;
        protected string _extension;
        protected string _sha;
        protected unknown _size;
        protected bool _has_original;
        protected bool _has_thumbnails;
        protected int _position;
        protected string _lang;
        #endregion
        #region Constructors
        public Media() { }
        public Media(int item_id, string ingester, string renderer, string data, string source, string media_type, string storage_id, string extension, string sha, unknown size, bool has_original, bool has_thumbnails, int position, string lang)
        {
            this._item_id=item_id;
            this._ingester=ingester;
            this._renderer=renderer;
            this._data=data;
            this._source=source;
            this._media_type=media_type;
            this._storage_id=storage_id;
            this._extension=extension;
            this._sha=sha;
            this._size=size;
            this._has_original=has_original;
            this._has_thumbnails=has_thumbnails;
            this._position=position;
            this._lang=lang;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Item_id
        {
            get {return _item_id;}
            set {_item_id=value;}
        }
        public virtual string Ingester
        {
            get {return _ingester;}
            set {_ingester=value;}
        }
        public virtual string Renderer
        {
            get {return _renderer;}
            set {_renderer=value;}
        }
        public virtual string Data
        {
            get {return _data;}
            set {_data=value;}
        }
        public virtual string Source
        {
            get {return _source;}
            set {_source=value;}
        }
        public virtual string Media_type
        {
            get {return _media_type;}
            set {_media_type=value;}
        }
        public virtual string Storage_id
        {
            get {return _storage_id;}
            set {_storage_id=value;}
        }
        public virtual string Extension
        {
            get {return _extension;}
            set {_extension=value;}
        }
        public virtual string Sha
        {
            get {return _sha;}
            set {_sha=value;}
        }
        public virtual unknown Size
        {
            get {return _size;}
            set {_size=value;}
        }
        public virtual bool Has_original
        {
            get {return _has_original;}
            set {_has_original=value;}
        }
        public virtual bool Has_thumbnails
        {
            get {return _has_thumbnails;}
            set {_has_thumbnails=value;}
        }
        public virtual int Position
        {
            get {return _position;}
            set {_position=value;}
        }
        public virtual string Lang
        {
            get {return _lang;}
            set {_lang=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Migration
    public class Migration
    {
        #region Member Variables
        protected string _version;
        #endregion
        #region Constructors
        public Migration() { }
        public Migration()
        {
        }
        #endregion
        #region Public Properties
        public virtual string Version
        {
            get {return _version;}
            set {_version=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Module
    public class Module
    {
        #region Member Variables
        protected string _id;
        protected bool _is_active;
        protected string _version;
        #endregion
        #region Constructors
        public Module() { }
        public Module(bool is_active, string version)
        {
            this._is_active=is_active;
            this._version=version;
        }
        #endregion
        #region Public Properties
        public virtual string Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual bool Is_active
        {
            get {return _is_active;}
            set {_is_active=value;}
        }
        public virtual string Version
        {
            get {return _version;}
            set {_version=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Password_creation
    public class Password_creation
    {
        #region Member Variables
        protected string _id;
        protected int _user_id;
        protected DateTime _created;
        protected bool _activate;
        #endregion
        #region Constructors
        public Password_creation() { }
        public Password_creation(int user_id, DateTime created, bool activate)
        {
            this._user_id=user_id;
            this._created=created;
            this._activate=activate;
        }
        #endregion
        #region Public Properties
        public virtual string Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int User_id
        {
            get {return _user_id;}
            set {_user_id=value;}
        }
        public virtual DateTime Created
        {
            get {return _created;}
            set {_created=value;}
        }
        public virtual bool Activate
        {
            get {return _activate;}
            set {_activate=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Property
    public class Property
    {
        #region Member Variables
        protected int _id;
        protected int _owner_id;
        protected int _vocabulary_id;
        protected string _local_name;
        protected string _label;
        protected string _comment;
        #endregion
        #region Constructors
        public Property() { }
        public Property(int owner_id, int vocabulary_id, string local_name, string label, string comment)
        {
            this._owner_id=owner_id;
            this._vocabulary_id=vocabulary_id;
            this._local_name=local_name;
            this._label=label;
            this._comment=comment;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Owner_id
        {
            get {return _owner_id;}
            set {_owner_id=value;}
        }
        public virtual int Vocabulary_id
        {
            get {return _vocabulary_id;}
            set {_vocabulary_id=value;}
        }
        public virtual string Local_name
        {
            get {return _local_name;}
            set {_local_name=value;}
        }
        public virtual string Label
        {
            get {return _label;}
            set {_label=value;}
        }
        public virtual string Comment
        {
            get {return _comment;}
            set {_comment=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Resource
    public class Resource
    {
        #region Member Variables
        protected int _id;
        protected int _owner_id;
        protected int _resource_class_id;
        protected int _resource_template_id;
        protected int _thumbnail_id;
        protected string _title;
        protected bool _is_public;
        protected DateTime _created;
        protected DateTime _modified;
        protected string _resource_type;
        #endregion
        #region Constructors
        public Resource() { }
        public Resource(int owner_id, int resource_class_id, int resource_template_id, int thumbnail_id, string title, bool is_public, DateTime created, DateTime modified, string resource_type)
        {
            this._owner_id=owner_id;
            this._resource_class_id=resource_class_id;
            this._resource_template_id=resource_template_id;
            this._thumbnail_id=thumbnail_id;
            this._title=title;
            this._is_public=is_public;
            this._created=created;
            this._modified=modified;
            this._resource_type=resource_type;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Owner_id
        {
            get {return _owner_id;}
            set {_owner_id=value;}
        }
        public virtual int Resource_class_id
        {
            get {return _resource_class_id;}
            set {_resource_class_id=value;}
        }
        public virtual int Resource_template_id
        {
            get {return _resource_template_id;}
            set {_resource_template_id=value;}
        }
        public virtual int Thumbnail_id
        {
            get {return _thumbnail_id;}
            set {_thumbnail_id=value;}
        }
        public virtual string Title
        {
            get {return _title;}
            set {_title=value;}
        }
        public virtual bool Is_public
        {
            get {return _is_public;}
            set {_is_public=value;}
        }
        public virtual DateTime Created
        {
            get {return _created;}
            set {_created=value;}
        }
        public virtual DateTime Modified
        {
            get {return _modified;}
            set {_modified=value;}
        }
        public virtual string Resource_type
        {
            get {return _resource_type;}
            set {_resource_type=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Resource_class
    public class Resource_class
    {
        #region Member Variables
        protected int _id;
        protected int _owner_id;
        protected int _vocabulary_id;
        protected string _local_name;
        protected string _label;
        protected string _comment;
        #endregion
        #region Constructors
        public Resource_class() { }
        public Resource_class(int owner_id, int vocabulary_id, string local_name, string label, string comment)
        {
            this._owner_id=owner_id;
            this._vocabulary_id=vocabulary_id;
            this._local_name=local_name;
            this._label=label;
            this._comment=comment;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Owner_id
        {
            get {return _owner_id;}
            set {_owner_id=value;}
        }
        public virtual int Vocabulary_id
        {
            get {return _vocabulary_id;}
            set {_vocabulary_id=value;}
        }
        public virtual string Local_name
        {
            get {return _local_name;}
            set {_local_name=value;}
        }
        public virtual string Label
        {
            get {return _label;}
            set {_label=value;}
        }
        public virtual string Comment
        {
            get {return _comment;}
            set {_comment=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Resource_template
    public class Resource_template
    {
        #region Member Variables
        protected int _id;
        protected int _owner_id;
        protected int _resource_class_id;
        protected int _title_property_id;
        protected int _description_property_id;
        protected string _label;
        #endregion
        #region Constructors
        public Resource_template() { }
        public Resource_template(int owner_id, int resource_class_id, int title_property_id, int description_property_id, string label)
        {
            this._owner_id=owner_id;
            this._resource_class_id=resource_class_id;
            this._title_property_id=title_property_id;
            this._description_property_id=description_property_id;
            this._label=label;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Owner_id
        {
            get {return _owner_id;}
            set {_owner_id=value;}
        }
        public virtual int Resource_class_id
        {
            get {return _resource_class_id;}
            set {_resource_class_id=value;}
        }
        public virtual int Title_property_id
        {
            get {return _title_property_id;}
            set {_title_property_id=value;}
        }
        public virtual int Description_property_id
        {
            get {return _description_property_id;}
            set {_description_property_id=value;}
        }
        public virtual string Label
        {
            get {return _label;}
            set {_label=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Resource_template_property
    public class Resource_template_property
    {
        #region Member Variables
        protected int _id;
        protected int _resource_template_id;
        protected int _property_id;
        protected string _alternate_label;
        protected string _alternate_comment;
        protected int _position;
        protected string _data_type;
        protected bool _is_required;
        protected bool _is_private;
        #endregion
        #region Constructors
        public Resource_template_property() { }
        public Resource_template_property(int resource_template_id, int property_id, string alternate_label, string alternate_comment, int position, string data_type, bool is_required, bool is_private)
        {
            this._resource_template_id=resource_template_id;
            this._property_id=property_id;
            this._alternate_label=alternate_label;
            this._alternate_comment=alternate_comment;
            this._position=position;
            this._data_type=data_type;
            this._is_required=is_required;
            this._is_private=is_private;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Resource_template_id
        {
            get {return _resource_template_id;}
            set {_resource_template_id=value;}
        }
        public virtual int Property_id
        {
            get {return _property_id;}
            set {_property_id=value;}
        }
        public virtual string Alternate_label
        {
            get {return _alternate_label;}
            set {_alternate_label=value;}
        }
        public virtual string Alternate_comment
        {
            get {return _alternate_comment;}
            set {_alternate_comment=value;}
        }
        public virtual int Position
        {
            get {return _position;}
            set {_position=value;}
        }
        public virtual string Data_type
        {
            get {return _data_type;}
            set {_data_type=value;}
        }
        public virtual bool Is_required
        {
            get {return _is_required;}
            set {_is_required=value;}
        }
        public virtual bool Is_private
        {
            get {return _is_private;}
            set {_is_private=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Session
    public class Session
    {
        #region Member Variables
        protected string _id;
        protected long _data;
        protected int _modified;
        #endregion
        #region Constructors
        public Session() { }
        public Session(long data, int modified)
        {
            this._data=data;
            this._modified=modified;
        }
        #endregion
        #region Public Properties
        public virtual string Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual long Data
        {
            get {return _data;}
            set {_data=value;}
        }
        public virtual int Modified
        {
            get {return _modified;}
            set {_modified=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Setting
    public class Setting
    {
        #region Member Variables
        protected string _id;
        protected string _value;
        #endregion
        #region Constructors
        public Setting() { }
        public Setting(string value)
        {
            this._value=value;
        }
        #endregion
        #region Public Properties
        public virtual string Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Value
        {
            get {return _value;}
            set {_value=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Site
    public class Site
    {
        #region Member Variables
        protected int _id;
        protected int _homepage_id;
        protected int _owner_id;
        protected string _slug;
        protected string _theme;
        protected string _title;
        protected string _summary;
        protected string _navigation;
        protected string _item_pool;
        protected DateTime _created;
        protected DateTime _modified;
        protected bool _is_public;
        #endregion
        #region Constructors
        public Site() { }
        public Site(int homepage_id, int owner_id, string slug, string theme, string title, string summary, string navigation, string item_pool, DateTime created, DateTime modified, bool is_public)
        {
            this._homepage_id=homepage_id;
            this._owner_id=owner_id;
            this._slug=slug;
            this._theme=theme;
            this._title=title;
            this._summary=summary;
            this._navigation=navigation;
            this._item_pool=item_pool;
            this._created=created;
            this._modified=modified;
            this._is_public=is_public;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Homepage_id
        {
            get {return _homepage_id;}
            set {_homepage_id=value;}
        }
        public virtual int Owner_id
        {
            get {return _owner_id;}
            set {_owner_id=value;}
        }
        public virtual string Slug
        {
            get {return _slug;}
            set {_slug=value;}
        }
        public virtual string Theme
        {
            get {return _theme;}
            set {_theme=value;}
        }
        public virtual string Title
        {
            get {return _title;}
            set {_title=value;}
        }
        public virtual string Summary
        {
            get {return _summary;}
            set {_summary=value;}
        }
        public virtual string Navigation
        {
            get {return _navigation;}
            set {_navigation=value;}
        }
        public virtual string Item_pool
        {
            get {return _item_pool;}
            set {_item_pool=value;}
        }
        public virtual DateTime Created
        {
            get {return _created;}
            set {_created=value;}
        }
        public virtual DateTime Modified
        {
            get {return _modified;}
            set {_modified=value;}
        }
        public virtual bool Is_public
        {
            get {return _is_public;}
            set {_is_public=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Site_block_attachment
    public class Site_block_attachment
    {
        #region Member Variables
        protected int _id;
        protected int _block_id;
        protected int _item_id;
        protected int _media_id;
        protected string _caption;
        protected int _position;
        #endregion
        #region Constructors
        public Site_block_attachment() { }
        public Site_block_attachment(int block_id, int item_id, int media_id, string caption, int position)
        {
            this._block_id=block_id;
            this._item_id=item_id;
            this._media_id=media_id;
            this._caption=caption;
            this._position=position;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Block_id
        {
            get {return _block_id;}
            set {_block_id=value;}
        }
        public virtual int Item_id
        {
            get {return _item_id;}
            set {_item_id=value;}
        }
        public virtual int Media_id
        {
            get {return _media_id;}
            set {_media_id=value;}
        }
        public virtual string Caption
        {
            get {return _caption;}
            set {_caption=value;}
        }
        public virtual int Position
        {
            get {return _position;}
            set {_position=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Site_item_set
    public class Site_item_set
    {
        #region Member Variables
        protected int _id;
        protected int _site_id;
        protected int _item_set_id;
        protected int _position;
        #endregion
        #region Constructors
        public Site_item_set() { }
        public Site_item_set(int site_id, int item_set_id, int position)
        {
            this._site_id=site_id;
            this._item_set_id=item_set_id;
            this._position=position;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Site_id
        {
            get {return _site_id;}
            set {_site_id=value;}
        }
        public virtual int Item_set_id
        {
            get {return _item_set_id;}
            set {_item_set_id=value;}
        }
        public virtual int Position
        {
            get {return _position;}
            set {_position=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Site_page
    public class Site_page
    {
        #region Member Variables
        protected int _id;
        protected int _site_id;
        protected string _slug;
        protected string _title;
        protected DateTime _created;
        protected DateTime _modified;
        #endregion
        #region Constructors
        public Site_page() { }
        public Site_page(int site_id, string slug, string title, DateTime created, DateTime modified)
        {
            this._site_id=site_id;
            this._slug=slug;
            this._title=title;
            this._created=created;
            this._modified=modified;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Site_id
        {
            get {return _site_id;}
            set {_site_id=value;}
        }
        public virtual string Slug
        {
            get {return _slug;}
            set {_slug=value;}
        }
        public virtual string Title
        {
            get {return _title;}
            set {_title=value;}
        }
        public virtual DateTime Created
        {
            get {return _created;}
            set {_created=value;}
        }
        public virtual DateTime Modified
        {
            get {return _modified;}
            set {_modified=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Site_page_block
    public class Site_page_block
    {
        #region Member Variables
        protected int _id;
        protected int _page_id;
        protected string _layout;
        protected string _data;
        protected int _position;
        #endregion
        #region Constructors
        public Site_page_block() { }
        public Site_page_block(int page_id, string layout, string data, int position)
        {
            this._page_id=page_id;
            this._layout=layout;
            this._data=data;
            this._position=position;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Page_id
        {
            get {return _page_id;}
            set {_page_id=value;}
        }
        public virtual string Layout
        {
            get {return _layout;}
            set {_layout=value;}
        }
        public virtual string Data
        {
            get {return _data;}
            set {_data=value;}
        }
        public virtual int Position
        {
            get {return _position;}
            set {_position=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Site_permission
    public class Site_permission
    {
        #region Member Variables
        protected int _id;
        protected int _site_id;
        protected int _user_id;
        protected string _role;
        #endregion
        #region Constructors
        public Site_permission() { }
        public Site_permission(int site_id, int user_id, string role)
        {
            this._site_id=site_id;
            this._user_id=user_id;
            this._role=role;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Site_id
        {
            get {return _site_id;}
            set {_site_id=value;}
        }
        public virtual int User_id
        {
            get {return _user_id;}
            set {_user_id=value;}
        }
        public virtual string Role
        {
            get {return _role;}
            set {_role=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Site_setting
    public class Site_setting
    {
        #region Member Variables
        protected string _id;
        protected int _site_id;
        protected string _value;
        #endregion
        #region Constructors
        public Site_setting() { }
        public Site_setting(string value)
        {
            this._value=value;
        }
        #endregion
        #region Public Properties
        public virtual string Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Site_id
        {
            get {return _site_id;}
            set {_site_id=value;}
        }
        public virtual string Value
        {
            get {return _value;}
            set {_value=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region User
    public class User
    {
        #region Member Variables
        protected int _id;
        protected string _email;
        protected string _name;
        protected DateTime _created;
        protected DateTime _modified;
        protected string _password_hash;
        protected string _role;
        protected bool _is_active;
        #endregion
        #region Constructors
        public User() { }
        public User(string email, string name, DateTime created, DateTime modified, string password_hash, string role, bool is_active)
        {
            this._email=email;
            this._name=name;
            this._created=created;
            this._modified=modified;
            this._password_hash=password_hash;
            this._role=role;
            this._is_active=is_active;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Email
        {
            get {return _email;}
            set {_email=value;}
        }
        public virtual string Name
        {
            get {return _name;}
            set {_name=value;}
        }
        public virtual DateTime Created
        {
            get {return _created;}
            set {_created=value;}
        }
        public virtual DateTime Modified
        {
            get {return _modified;}
            set {_modified=value;}
        }
        public virtual string Password_hash
        {
            get {return _password_hash;}
            set {_password_hash=value;}
        }
        public virtual string Role
        {
            get {return _role;}
            set {_role=value;}
        }
        public virtual bool Is_active
        {
            get {return _is_active;}
            set {_is_active=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region User_setting
    public class User_setting
    {
        #region Member Variables
        protected string _id;
        protected int _user_id;
        protected string _value;
        #endregion
        #region Constructors
        public User_setting() { }
        public User_setting(string value)
        {
            this._value=value;
        }
        #endregion
        #region Public Properties
        public virtual string Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int User_id
        {
            get {return _user_id;}
            set {_user_id=value;}
        }
        public virtual string Value
        {
            get {return _value;}
            set {_value=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Value
    public class Value
    {
        #region Member Variables
        protected int _id;
        protected int _resource_id;
        protected int _property_id;
        protected int _value_resource_id;
        protected string _type;
        protected string _lang;
        protected string _value;
        protected string _uri;
        protected bool _is_public;
        #endregion
        #region Constructors
        public Value() { }
        public Value(int resource_id, int property_id, int value_resource_id, string type, string lang, string value, string uri, bool is_public)
        {
            this._resource_id=resource_id;
            this._property_id=property_id;
            this._value_resource_id=value_resource_id;
            this._type=type;
            this._lang=lang;
            this._value=value;
            this._uri=uri;
            this._is_public=is_public;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Resource_id
        {
            get {return _resource_id;}
            set {_resource_id=value;}
        }
        public virtual int Property_id
        {
            get {return _property_id;}
            set {_property_id=value;}
        }
        public virtual int Value_resource_id
        {
            get {return _value_resource_id;}
            set {_value_resource_id=value;}
        }
        public virtual string Type
        {
            get {return _type;}
            set {_type=value;}
        }
        public virtual string Lang
        {
            get {return _lang;}
            set {_lang=value;}
        }
        public virtual string Value
        {
            get {return _value;}
            set {_value=value;}
        }
        public virtual string Uri
        {
            get {return _uri;}
            set {_uri=value;}
        }
        public virtual bool Is_public
        {
            get {return _is_public;}
            set {_is_public=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Omeka
{
    #region Vocabulary
    public class Vocabulary
    {
        #region Member Variables
        protected int _id;
        protected int _owner_id;
        protected string _namespace_uri;
        protected string _prefix;
        protected string _label;
        protected string _comment;
        #endregion
        #region Constructors
        public Vocabulary() { }
        public Vocabulary(int owner_id, string namespace_uri, string prefix, string label, string comment)
        {
            this._owner_id=owner_id;
            this._namespace_uri=namespace_uri;
            this._prefix=prefix;
            this._label=label;
            this._comment=comment;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Owner_id
        {
            get {return _owner_id;}
            set {_owner_id=value;}
        }
        public virtual string Namespace_uri
        {
            get {return _namespace_uri;}
            set {_namespace_uri=value;}
        }
        public virtual string Prefix
        {
            get {return _prefix;}
            set {_prefix=value;}
        }
        public virtual string Label
        {
            get {return _label;}
            set {_label=value;}
        }
        public virtual string Comment
        {
            get {return _comment;}
            set {_comment=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__bookmark
    public class Pma__bookmark
    {
        #region Member Variables
        protected int _id;
        protected string _dbase;
        protected string _user;
        protected string _label;
        protected string _query;
        #endregion
        #region Constructors
        public Pma__bookmark() { }
        public Pma__bookmark(string dbase, string user, string label, string query)
        {
            this._dbase=dbase;
            this._user=user;
            this._label=label;
            this._query=query;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Dbase
        {
            get {return _dbase;}
            set {_dbase=value;}
        }
        public virtual string User
        {
            get {return _user;}
            set {_user=value;}
        }
        public virtual string Label
        {
            get {return _label;}
            set {_label=value;}
        }
        public virtual string Query
        {
            get {return _query;}
            set {_query=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__central_columns
    public class Pma__central_columns
    {
        #region Member Variables
        protected string _db_name;
        protected string _col_name;
        protected string _col_type;
        protected string _col_length;
        protected string _col_collation;
        protected bool _col_isNull;
        protected string _col_extra;
        protected string _col_default;
        #endregion
        #region Constructors
        public Pma__central_columns() { }
        public Pma__central_columns(string col_type, string col_length, string col_collation, bool col_isNull, string col_extra, string col_default)
        {
            this._col_type=col_type;
            this._col_length=col_length;
            this._col_collation=col_collation;
            this._col_isNull=col_isNull;
            this._col_extra=col_extra;
            this._col_default=col_default;
        }
        #endregion
        #region Public Properties
        public virtual string Db_name
        {
            get {return _db_name;}
            set {_db_name=value;}
        }
        public virtual string Col_name
        {
            get {return _col_name;}
            set {_col_name=value;}
        }
        public virtual string Col_type
        {
            get {return _col_type;}
            set {_col_type=value;}
        }
        public virtual string Col_length
        {
            get {return _col_length;}
            set {_col_length=value;}
        }
        public virtual string Col_collation
        {
            get {return _col_collation;}
            set {_col_collation=value;}
        }
        public virtual bool Col_isNull
        {
            get {return _col_isNull;}
            set {_col_isNull=value;}
        }
        public virtual string Col_extra
        {
            get {return _col_extra;}
            set {_col_extra=value;}
        }
        public virtual string Col_default
        {
            get {return _col_default;}
            set {_col_default=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__column_info
    public class Pma__column_info
    {
        #region Member Variables
        protected int _id;
        protected string _db_name;
        protected string _table_name;
        protected string _column_name;
        protected string _comment;
        protected string _mimetype;
        protected string _transformation;
        protected string _transformation_options;
        protected string _input_transformation;
        protected string _input_transformation_options;
        #endregion
        #region Constructors
        public Pma__column_info() { }
        public Pma__column_info(string db_name, string table_name, string column_name, string comment, string mimetype, string transformation, string transformation_options, string input_transformation, string input_transformation_options)
        {
            this._db_name=db_name;
            this._table_name=table_name;
            this._column_name=column_name;
            this._comment=comment;
            this._mimetype=mimetype;
            this._transformation=transformation;
            this._transformation_options=transformation_options;
            this._input_transformation=input_transformation;
            this._input_transformation_options=input_transformation_options;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Db_name
        {
            get {return _db_name;}
            set {_db_name=value;}
        }
        public virtual string Table_name
        {
            get {return _table_name;}
            set {_table_name=value;}
        }
        public virtual string Column_name
        {
            get {return _column_name;}
            set {_column_name=value;}
        }
        public virtual string Comment
        {
            get {return _comment;}
            set {_comment=value;}
        }
        public virtual string Mimetype
        {
            get {return _mimetype;}
            set {_mimetype=value;}
        }
        public virtual string Transformation
        {
            get {return _transformation;}
            set {_transformation=value;}
        }
        public virtual string Transformation_options
        {
            get {return _transformation_options;}
            set {_transformation_options=value;}
        }
        public virtual string Input_transformation
        {
            get {return _input_transformation;}
            set {_input_transformation=value;}
        }
        public virtual string Input_transformation_options
        {
            get {return _input_transformation_options;}
            set {_input_transformation_options=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__designer_settings
    public class Pma__designer_settings
    {
        #region Member Variables
        protected string _username;
        protected string _settings_data;
        #endregion
        #region Constructors
        public Pma__designer_settings() { }
        public Pma__designer_settings(string settings_data)
        {
            this._settings_data=settings_data;
        }
        #endregion
        #region Public Properties
        public virtual string Username
        {
            get {return _username;}
            set {_username=value;}
        }
        public virtual string Settings_data
        {
            get {return _settings_data;}
            set {_settings_data=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__export_templates
    public class Pma__export_templates
    {
        #region Member Variables
        protected int _id;
        protected string _username;
        protected string _export_type;
        protected string _template_name;
        protected string _template_data;
        #endregion
        #region Constructors
        public Pma__export_templates() { }
        public Pma__export_templates(string username, string export_type, string template_name, string template_data)
        {
            this._username=username;
            this._export_type=export_type;
            this._template_name=template_name;
            this._template_data=template_data;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Username
        {
            get {return _username;}
            set {_username=value;}
        }
        public virtual string Export_type
        {
            get {return _export_type;}
            set {_export_type=value;}
        }
        public virtual string Template_name
        {
            get {return _template_name;}
            set {_template_name=value;}
        }
        public virtual string Template_data
        {
            get {return _template_data;}
            set {_template_data=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__favorite
    public class Pma__favorite
    {
        #region Member Variables
        protected string _username;
        protected string _tables;
        #endregion
        #region Constructors
        public Pma__favorite() { }
        public Pma__favorite(string tables)
        {
            this._tables=tables;
        }
        #endregion
        #region Public Properties
        public virtual string Username
        {
            get {return _username;}
            set {_username=value;}
        }
        public virtual string Tables
        {
            get {return _tables;}
            set {_tables=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__history
    public class Pma__history
    {
        #region Member Variables
        protected unknown _id;
        protected string _username;
        protected string _db;
        protected string _table;
        protected unknown _timevalue;
        protected string _sqlquery;
        #endregion
        #region Constructors
        public Pma__history() { }
        public Pma__history(string username, string db, string table, unknown timevalue, string sqlquery)
        {
            this._username=username;
            this._db=db;
            this._table=table;
            this._timevalue=timevalue;
            this._sqlquery=sqlquery;
        }
        #endregion
        #region Public Properties
        public virtual unknown Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Username
        {
            get {return _username;}
            set {_username=value;}
        }
        public virtual string Db
        {
            get {return _db;}
            set {_db=value;}
        }
        public virtual string Table
        {
            get {return _table;}
            set {_table=value;}
        }
        public virtual unknown Timevalue
        {
            get {return _timevalue;}
            set {_timevalue=value;}
        }
        public virtual string Sqlquery
        {
            get {return _sqlquery;}
            set {_sqlquery=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__navigationhiding
    public class Pma__navigationhiding
    {
        #region Member Variables
        protected string _username;
        protected string _item_name;
        protected string _item_type;
        protected string _db_name;
        protected string _table_name;
        #endregion
        #region Constructors
        public Pma__navigationhiding() { }
        public Pma__navigationhiding()
        {
        }
        #endregion
        #region Public Properties
        public virtual string Username
        {
            get {return _username;}
            set {_username=value;}
        }
        public virtual string Item_name
        {
            get {return _item_name;}
            set {_item_name=value;}
        }
        public virtual string Item_type
        {
            get {return _item_type;}
            set {_item_type=value;}
        }
        public virtual string Db_name
        {
            get {return _db_name;}
            set {_db_name=value;}
        }
        public virtual string Table_name
        {
            get {return _table_name;}
            set {_table_name=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__pdf_pages
    public class Pma__pdf_pages
    {
        #region Member Variables
        protected string _db_name;
        protected int _page_nr;
        protected string _page_descr;
        #endregion
        #region Constructors
        public Pma__pdf_pages() { }
        public Pma__pdf_pages(string db_name, string page_descr)
        {
            this._db_name=db_name;
            this._page_descr=page_descr;
        }
        #endregion
        #region Public Properties
        public virtual string Db_name
        {
            get {return _db_name;}
            set {_db_name=value;}
        }
        public virtual int Page_nr
        {
            get {return _page_nr;}
            set {_page_nr=value;}
        }
        public virtual string Page_descr
        {
            get {return _page_descr;}
            set {_page_descr=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__recent
    public class Pma__recent
    {
        #region Member Variables
        protected string _username;
        protected string _tables;
        #endregion
        #region Constructors
        public Pma__recent() { }
        public Pma__recent(string tables)
        {
            this._tables=tables;
        }
        #endregion
        #region Public Properties
        public virtual string Username
        {
            get {return _username;}
            set {_username=value;}
        }
        public virtual string Tables
        {
            get {return _tables;}
            set {_tables=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__relation
    public class Pma__relation
    {
        #region Member Variables
        protected string _master_db;
        protected string _master_table;
        protected string _master_field;
        protected string _foreign_db;
        protected string _foreign_table;
        protected string _foreign_field;
        #endregion
        #region Constructors
        public Pma__relation() { }
        public Pma__relation(string foreign_db, string foreign_table, string foreign_field)
        {
            this._foreign_db=foreign_db;
            this._foreign_table=foreign_table;
            this._foreign_field=foreign_field;
        }
        #endregion
        #region Public Properties
        public virtual string Master_db
        {
            get {return _master_db;}
            set {_master_db=value;}
        }
        public virtual string Master_table
        {
            get {return _master_table;}
            set {_master_table=value;}
        }
        public virtual string Master_field
        {
            get {return _master_field;}
            set {_master_field=value;}
        }
        public virtual string Foreign_db
        {
            get {return _foreign_db;}
            set {_foreign_db=value;}
        }
        public virtual string Foreign_table
        {
            get {return _foreign_table;}
            set {_foreign_table=value;}
        }
        public virtual string Foreign_field
        {
            get {return _foreign_field;}
            set {_foreign_field=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__savedsearches
    public class Pma__savedsearches
    {
        #region Member Variables
        protected int _id;
        protected string _username;
        protected string _db_name;
        protected string _search_name;
        protected string _search_data;
        #endregion
        #region Constructors
        public Pma__savedsearches() { }
        public Pma__savedsearches(string username, string db_name, string search_name, string search_data)
        {
            this._username=username;
            this._db_name=db_name;
            this._search_name=search_name;
            this._search_data=search_data;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Username
        {
            get {return _username;}
            set {_username=value;}
        }
        public virtual string Db_name
        {
            get {return _db_name;}
            set {_db_name=value;}
        }
        public virtual string Search_name
        {
            get {return _search_name;}
            set {_search_name=value;}
        }
        public virtual string Search_data
        {
            get {return _search_data;}
            set {_search_data=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__table_coords
    public class Pma__table_coords
    {
        #region Member Variables
        protected string _db_name;
        protected string _table_name;
        protected int _pdf_page_number;
        protected unknown _x;
        protected unknown _y;
        #endregion
        #region Constructors
        public Pma__table_coords() { }
        public Pma__table_coords(unknown x, unknown y)
        {
            this._x=x;
            this._y=y;
        }
        #endregion
        #region Public Properties
        public virtual string Db_name
        {
            get {return _db_name;}
            set {_db_name=value;}
        }
        public virtual string Table_name
        {
            get {return _table_name;}
            set {_table_name=value;}
        }
        public virtual int Pdf_page_number
        {
            get {return _pdf_page_number;}
            set {_pdf_page_number=value;}
        }
        public virtual unknown X
        {
            get {return _x;}
            set {_x=value;}
        }
        public virtual unknown Y
        {
            get {return _y;}
            set {_y=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__table_info
    public class Pma__table_info
    {
        #region Member Variables
        protected string _db_name;
        protected string _table_name;
        protected string _display_field;
        #endregion
        #region Constructors
        public Pma__table_info() { }
        public Pma__table_info(string display_field)
        {
            this._display_field=display_field;
        }
        #endregion
        #region Public Properties
        public virtual string Db_name
        {
            get {return _db_name;}
            set {_db_name=value;}
        }
        public virtual string Table_name
        {
            get {return _table_name;}
            set {_table_name=value;}
        }
        public virtual string Display_field
        {
            get {return _display_field;}
            set {_display_field=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__table_uiprefs
    public class Pma__table_uiprefs
    {
        #region Member Variables
        protected string _username;
        protected string _db_name;
        protected string _table_name;
        protected string _prefs;
        protected unknown _last_update;
        #endregion
        #region Constructors
        public Pma__table_uiprefs() { }
        public Pma__table_uiprefs(string prefs, unknown last_update)
        {
            this._prefs=prefs;
            this._last_update=last_update;
        }
        #endregion
        #region Public Properties
        public virtual string Username
        {
            get {return _username;}
            set {_username=value;}
        }
        public virtual string Db_name
        {
            get {return _db_name;}
            set {_db_name=value;}
        }
        public virtual string Table_name
        {
            get {return _table_name;}
            set {_table_name=value;}
        }
        public virtual string Prefs
        {
            get {return _prefs;}
            set {_prefs=value;}
        }
        public virtual unknown Last_update
        {
            get {return _last_update;}
            set {_last_update=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__tracking
    public class Pma__tracking
    {
        #region Member Variables
        protected string _db_name;
        protected string _table_name;
        protected int _version;
        protected DateTime _date_created;
        protected DateTime _date_updated;
        protected string _schema_snapshot;
        protected string _schema_sql;
        protected string _data_sql;
        protected unknown _tracking;
        protected int _tracking_active;
        #endregion
        #region Constructors
        public Pma__tracking() { }
        public Pma__tracking(DateTime date_created, DateTime date_updated, string schema_snapshot, string schema_sql, string data_sql, unknown tracking, int tracking_active)
        {
            this._date_created=date_created;
            this._date_updated=date_updated;
            this._schema_snapshot=schema_snapshot;
            this._schema_sql=schema_sql;
            this._data_sql=data_sql;
            this._tracking=tracking;
            this._tracking_active=tracking_active;
        }
        #endregion
        #region Public Properties
        public virtual string Db_name
        {
            get {return _db_name;}
            set {_db_name=value;}
        }
        public virtual string Table_name
        {
            get {return _table_name;}
            set {_table_name=value;}
        }
        public virtual int Version
        {
            get {return _version;}
            set {_version=value;}
        }
        public virtual DateTime Date_created
        {
            get {return _date_created;}
            set {_date_created=value;}
        }
        public virtual DateTime Date_updated
        {
            get {return _date_updated;}
            set {_date_updated=value;}
        }
        public virtual string Schema_snapshot
        {
            get {return _schema_snapshot;}
            set {_schema_snapshot=value;}
        }
        public virtual string Schema_sql
        {
            get {return _schema_sql;}
            set {_schema_sql=value;}
        }
        public virtual string Data_sql
        {
            get {return _data_sql;}
            set {_data_sql=value;}
        }
        public virtual unknown Tracking
        {
            get {return _tracking;}
            set {_tracking=value;}
        }
        public virtual int Tracking_active
        {
            get {return _tracking_active;}
            set {_tracking_active=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__userconfig
    public class Pma__userconfig
    {
        #region Member Variables
        protected string _username;
        protected unknown _timevalue;
        protected string _config_data;
        #endregion
        #region Constructors
        public Pma__userconfig() { }
        public Pma__userconfig(unknown timevalue, string config_data)
        {
            this._timevalue=timevalue;
            this._config_data=config_data;
        }
        #endregion
        #region Public Properties
        public virtual string Username
        {
            get {return _username;}
            set {_username=value;}
        }
        public virtual unknown Timevalue
        {
            get {return _timevalue;}
            set {_timevalue=value;}
        }
        public virtual string Config_data
        {
            get {return _config_data;}
            set {_config_data=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__usergroups
    public class Pma__usergroups
    {
        #region Member Variables
        protected string _usergroup;
        protected string _tab;
        protected unknown _allowed;
        #endregion
        #region Constructors
        public Pma__usergroups() { }
        public Pma__usergroups()
        {
        }
        #endregion
        #region Public Properties
        public virtual string Usergroup
        {
            get {return _usergroup;}
            set {_usergroup=value;}
        }
        public virtual string Tab
        {
            get {return _tab;}
            set {_tab=value;}
        }
        public virtual unknown Allowed
        {
            get {return _allowed;}
            set {_allowed=value;}
        }
        #endregion
    }
    #endregion
}using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Phpmyadmin
{
    #region Pma__users
    public class Pma__users
    {
        #region Member Variables
        protected string _username;
        protected string _usergroup;
        #endregion
        #region Constructors
        public Pma__users() { }
        public Pma__users()
        {
        }
        #endregion
        #region Public Properties
        public virtual string Username
        {
            get {return _username;}
            set {_username=value;}
        }
        public virtual string Usergroup
        {
            get {return _usergroup;}
            set {_usergroup=value;}
        }
        #endregion
    }
    #endregion
}