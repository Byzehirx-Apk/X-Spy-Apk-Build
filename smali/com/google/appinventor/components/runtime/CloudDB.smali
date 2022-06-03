.class public final Lcom/google/appinventor/components/runtime/CloudDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnClearListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component allowing you to store data on a Internet connected database server (using Redis software). This allows the users of your App to share data with each other. By default data will be stored in a server maintained by MIT, however you can setup and run your own server. Set the \"RedisServer\" property and \"RedisPort\" Property to access your own server."
    designerHelpDescription = "Non-visible component that communicates with CloudDB server to store and retrieve information."
    iconName = "images/cloudDB.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "jedis.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/CloudDB$a;
    }
.end annotation


# static fields
.field private static final APPEND_SCRIPT:Ljava/lang/String; = "local key = KEYS[1];local toAppend = cjson.decode(ARGV[1]);local project = ARGV[2];local currentValue = redis.call(\'get\', project .. \":\" .. key);local newTable;local subTable = {};local subTable1 = {};if (currentValue == false) then   newTable = {};else   newTable = cjson.decode(currentValue);  if not (type(newTable) == \'table\') then     return error(\'You can only append to a list\');  end end table.insert(newTable, toAppend);local newValue = cjson.encode(newTable);redis.call(\'set\', project .. \":\" .. key, newValue);table.insert(subTable1, newValue);table.insert(subTable, key);table.insert(subTable, subTable1);redis.call(\"publish\", project, cjson.encode(subTable));return newValue;"

.field private static final APPEND_SCRIPT_SHA1:Ljava/lang/String; = "d6cc0f65b29878589f00564d52c8654967e9bcf8"

.field private static final COMODO_ROOT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

.field private static final COMODO_USRTRUST:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

.field private static final DEBUG:Z = false

.field private static final DST_ROOT_X3:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDSjCCAjKgAwIBAgIQRK+wgNajJ7qJMDmGLvhAazANBgkqhkiG9w0BAQUFADA/\nMSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT\nDkRTVCBSb290IENBIFgzMB4XDTAwMDkzMDIxMTIxOVoXDTIxMDkzMDE0MDExNVow\nPzEkMCIGA1UEChMbRGlnaXRhbCBTaWduYXR1cmUgVHJ1c3QgQ28uMRcwFQYDVQQD\nEw5EU1QgUm9vdCBDQSBYMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB\nAN+v6ZdQCINXtMxiZfaQguzH0yxrMMpb7NnDfcdAwRgUi+DoM3ZJKuM/IUmTrE4O\nrz5Iy2Xu/NMhD2XSKtkyj4zl93ewEnu1lcCJo6m67XMuegwGMoOifooUMM0RoOEq\nOLl5CjH9UL2AZd+3UWODyOKIYepLYYHsUmu5ouJLGiifSKOeDNoJjj4XLh7dIN9b\nxiqKqy69cK3FCxolkHRyxXtqqzTWMIn/5WgTe1QLyNau7Fqckh49ZLOMxt+/yUFw\n7BZy1SbsOFU5Q9D8/RhcQPGX69Wam40dutolucbY38EVAjqr2m7xPi71XAicPNaD\naeQQmxkqtilX4+U9m5/wAl0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNV\nHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFMSnsaR7LHH62+FLkHX/xBVghYkQMA0GCSqG\nSIb3DQEBBQUAA4IBAQCjGiybFwBcqR7uKGY3Or+Dxz9LwwmglSBd49lZRNI+DT69\nikugdB/OEIKcdBodfpga3csTS7MgROSR6cz8faXbauX+5v3gTt23ADq1cEmv8uXr\nAvHRAosZy5Q6XkjEGB5YGV8eAlrwDPGxrancWYaLbumR9YbK+rlmM6pZW87ipxZz\nR8srzJmwN0jP41ZL9c8PDHIyh8bwRLtTcm1D9SZImlJnt1ir/md2cXjbDaJWFBM5\nJDGFoqgCWjBH4d1QB7wCCZAA62RjYJsWvIjJEubSfZGL+T0yjWW06XyxV3bqxbYo\nOb8VZRzI9neWagqNdwvYkQsEjgfbKbYK7p2CNTUQ\n-----END CERTIFICATE-----\n"

.field private static final LOG_TAG:Ljava/lang/String; = "CloudDB"

.field private static final POP_FIRST_SCRIPT:Ljava/lang/String; = "local key = KEYS[1];local project = ARGV[1];local currentValue = redis.call(\'get\', project .. \":\" .. key);local decodedValue = cjson.decode(currentValue);local subTable = {};local subTable1 = {};if (type(decodedValue) == \'table\') then   local removedValue = table.remove(decodedValue, 1);  local newValue = cjson.encode(decodedValue);  redis.call(\'set\', project .. \":\" .. key, newValue);  table.insert(subTable, key);  table.insert(subTable1, newValue);  table.insert(subTable, subTable1);  redis.call(\"publish\", project, cjson.encode(subTable));  return cjson.encode(removedValue);else   return error(\'You can only remove elements from a list\');end"

.field private static final POP_FIRST_SCRIPT_SHA1:Ljava/lang/String; = "ed4cb4717d157f447848fe03524da24e461028e1"

.field private static final SET_SUB_SCRIPT:Ljava/lang/String; = "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

.field private static final SET_SUB_SCRIPT_SHA1:Ljava/lang/String; = "765978e4c340012f50733280368a0ccc4a14dfb7"


# instance fields
.field private INSTANCE:Lredis/clients/jedis/Jedis;

.field private SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final activity:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private volatile background:Ljava/util/concurrent/ExecutorService;

.field private cm:Landroid/net/ConnectivityManager;

.field private volatile currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

.field private volatile dead:Z

.field private defaultRedisServer:Ljava/lang/String;

.field private importProject:Z

.field private isPublic:Z

.field private volatile listenerRunning:Z

.field private projectID:Ljava/lang/String;

.field private volatile redisPort:I

.field private volatile redisServer:Ljava/lang/String;

.field private volatile shutdown:Z

.field private final storeQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/CloudDB$a;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private useDefault:Z

.field private volatile useSSL:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 95
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->importProject:Z

    .line 96
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    .line 97
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    .line 98
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->isPublic:Z

    .line 100
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    .line 194
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    .line 195
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    .line 200
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    .line 201
    move-object v2, v0

    const-string/jumbo v3, "DEFAULT"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    .line 203
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    .line 204
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->shutdown:Z

    .line 207
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 211
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    .line 219
    move-object v2, v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    .line 227
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    .line 258
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    .line 259
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->activity:Landroid/app/Activity;

    .line 261
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    .line 262
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    .line 264
    move-object v2, v0

    const/16 v3, 0x18ed

    iput v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    .line 265
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/CloudDB;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/CloudDB;Z)Z
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/CloudDB;)Z
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/CloudDB;)Z
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->shutdown:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/CloudDB;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    move-object v0, v2

    return-object v0
.end method

.method private checkProjectIDNotBlank()V
    .locals 5

    .prologue
    .line 1070
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "CloudDB ProjectID property cannot be blank."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1073
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "CloudDB Token property cannot be blank"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1076
    :cond_1
    return-void
.end method

.method private declared-synchronized ensureSslSockFactory()V
    .locals 17

    .prologue
    .line 1240
    move-object/from16 v0, p0

    move-object/from16 v15, p0

    monitor-enter v15

    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    .line 1241
    .line 1290
    :goto_0
    monitor-exit v15

    return-void

    .line 1244
    :cond_0
    :try_start_1
    const-string/jumbo v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v10

    move-object v1, v10

    .line 1245
    new-instance v10, Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

    const-string/jumbo v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v10

    .line 1246
    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    move-object v3, v10

    .line 1247
    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1248
    new-instance v10, Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

    const-string/jumbo v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v10

    .line 1249
    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    move-object v4, v10

    .line 1250
    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1251
    new-instance v10, Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "-----BEGIN CERTIFICATE-----\nMIIDSjCCAjKgAwIBAgIQRK+wgNajJ7qJMDmGLvhAazANBgkqhkiG9w0BAQUFADA/\nMSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT\nDkRTVCBSb290IENBIFgzMB4XDTAwMDkzMDIxMTIxOVoXDTIxMDkzMDE0MDExNVow\nPzEkMCIGA1UEChMbRGlnaXRhbCBTaWduYXR1cmUgVHJ1c3QgQ28uMRcwFQYDVQQD\nEw5EU1QgUm9vdCBDQSBYMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB\nAN+v6ZdQCINXtMxiZfaQguzH0yxrMMpb7NnDfcdAwRgUi+DoM3ZJKuM/IUmTrE4O\nrz5Iy2Xu/NMhD2XSKtkyj4zl93ewEnu1lcCJo6m67XMuegwGMoOifooUMM0RoOEq\nOLl5CjH9UL2AZd+3UWODyOKIYepLYYHsUmu5ouJLGiifSKOeDNoJjj4XLh7dIN9b\nxiqKqy69cK3FCxolkHRyxXtqqzTWMIn/5WgTe1QLyNau7Fqckh49ZLOMxt+/yUFw\n7BZy1SbsOFU5Q9D8/RhcQPGX69Wam40dutolucbY38EVAjqr2m7xPi71XAicPNaD\naeQQmxkqtilX4+U9m5/wAl0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNV\nHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFMSnsaR7LHH62+FLkHX/xBVghYkQMA0GCSqG\nSIb3DQEBBQUAA4IBAQCjGiybFwBcqR7uKGY3Or+Dxz9LwwmglSBd49lZRNI+DT69\nikugdB/OEIKcdBodfpga3csTS7MgROSR6cz8faXbauX+5v3gTt23ADq1cEmv8uXr\nAvHRAosZy5Q6XkjEGB5YGV8eAlrwDPGxrancWYaLbumR9YbK+rlmM6pZW87ipxZz\nR8srzJmwN0jP41ZL9c8PDHIyh8bwRLtTcm1D9SZImlJnt1ir/md2cXjbDaJWFBM5\nJDGFoqgCWjBH4d1QB7wCCZAA62RjYJsWvIjJEubSfZGL+T0yjWW06XyxV3bqxbYo\nOb8VZRzI9neWagqNdwvYkQsEjgfbKbYK7p2CNTUQ\n-----END CERTIFICATE-----\n"

    const-string/jumbo v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v10

    .line 1252
    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    move-object v1, v10

    .line 1253
    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1259
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    .line 1260
    move-object v2, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1262
    const/4 v10, 0x1

    move v5, v10

    .line 1263
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->getSystemCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v10

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v6, v11

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_1

    move-object v10, v6

    move v11, v8

    aget-object v10, v10, v11

    move-object v9, v10

    .line 1264
    move-object v10, v2

    const-string/jumbo v11, "root"

    move v12, v5

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1265
    add-int/lit8 v5, v5, 0x1

    .line 1263
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1271
    :cond_1
    move-object v10, v2

    const-string/jumbo v11, "comodo"

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1272
    move-object v10, v2

    const-string/jumbo v11, "inter"

    move-object v12, v4

    invoke-virtual {v10, v11, v12}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1273
    move-object v10, v2

    const-string/jumbo v11, "dstx3"

    move-object v12, v1

    invoke-virtual {v10, v11, v12}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1275
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v10

    .line 1274
    invoke-static {v10}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v10

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    .line 1276
    move-object v6, v11

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1284
    const-string/jumbo v10, "TLS"

    invoke-static {v10}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    .line 1285
    move-object v7, v11

    const/4 v11, 0x0

    move-object v12, v6

    invoke-virtual {v12}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1286
    move-object v10, v0

    move-object v11, v7

    invoke-virtual {v11}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v11

    iput-object v11, v10, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1290
    goto/16 :goto_0

    .line 1287
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 1288
    :try_start_2
    const-string/jumbo v10, "CloudDB"

    const-string/jumbo v11, "Could not setup SSL Trust Store for CloudDB"

    move-object v12, v1

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v10

    .line 1289
    new-instance v10, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "Could Not setup SSL Trust Store for CloudDB: "

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v1

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1240
    :catchall_0
    move-exception v0

    monitor-exit v15

    throw v0
.end method

.method private flushJedis(Z)V
    .locals 7

    .prologue
    .line 1145
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    if-nez v2, :cond_0

    .line 1146
    .line 1172
    :goto_0
    return-void

    .line 1149
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    invoke-virtual {v2}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    .line 1154
    :goto_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    .line 1158
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/CloudDB$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB$3;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 1168
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->stopListener()V

    .line 1169
    move v2, v1

    if-eqz v2, :cond_1

    .line 1170
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V

    .line 1172
    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1213
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 1214
    move-object v1, v4

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move v6, v3

    move v3, v6

    move v4, v6

    .line 1215
    move v2, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, ""

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private getSystemCertificates()[Ljava/security/cert/X509Certificate;
    .locals 6

    .prologue
    .line 1301
    move-object v0, p0

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 1300
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 1302
    move-object v1, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1303
    move-object v2, v1

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 1304
    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 1307
    :goto_0
    return-object v0

    .line 1305
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1306
    const-string/jumbo v2, "CloudDB"

    const-string/jumbo v3, "Getting System Certificates"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1307
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    move-object v0, v2

    goto :goto_0
.end method

.method private readFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9

    .prologue
    .line 1190
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    move-object v2, v4

    .line 1192
    move-object v4, v1

    :try_start_0
    const-string/jumbo v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1193
    move-object v4, v1

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1195
    :cond_0
    move-object v4, v1

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1196
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Invalid fileName, was "

    move-object v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ReadFrom"

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1206
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Read"

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 1198
    :cond_1
    move-object v4, v0

    move-object v5, v1

    :try_start_1
    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1199
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/FileUtil;->readFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)[B

    move-result-object v4

    .line 1200
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1201
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 1202
    move-object v3, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "."

    move-object v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1203
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v1

    aput-object v6, v4, v5

    .line 1204
    move-object v4, v3

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private declared-synchronized startListener()V
    .locals 6

    .prologue
    .line 321
    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 325
    .line 379
    :goto_0
    monitor-exit v4

    return-void

    .line 327
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    .line 331
    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$1;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB$1;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    .line 378
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private stopListener()V
    .locals 3

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    if-eqz v1, :cond_0

    .line 290
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->terminate()V

    .line 291
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    .line 292
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method public final AppendValueToList(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Append a value to the end of a list atomically. If two devices use this function simultaneously, both will be appended and no data lost."
    .end annotation

    .prologue
    .line 879
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 881
    new-instance v4, Ljava/lang/Object;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v3, v4

    .line 883
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 884
    move-object v4, v2

    :try_start_0
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v4

    .line 888
    .line 890
    :cond_0
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 893
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/google/appinventor/components/runtime/CloudDB$8;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/CloudDB$8;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 904
    return-void

    .line 887
    :catch_0
    move-exception v4

    new-instance v4, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "Value failed to convert to JSON."

    const-string/jumbo v7, "JSON Creation Error."

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public final ClearTag(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove the tag from CloudDB"
    .end annotation

    .prologue
    .line 948
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 949
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/appinventor/components/runtime/CloudDB$9;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB$9;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 960
    return-void
.end method

.method public final CloudConnected()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "returns True if we are on the network and will likely be able to connect to the CloudDB server."
    .end annotation

    .prologue
    .line 774
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 775
    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 776
    :goto_0
    return v0

    .line 775
    :cond_0
    const/4 v2, 0x0

    .line 776
    move v0, v2

    goto :goto_0
.end method

.method public final CloudDBError(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an error occurred while communicating with the CloudDB Redis server."
    .end annotation

    .prologue
    .line 1054
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "CloudDB"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1055
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/CloudDB$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB$2;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 1067
    return-void
.end method

.method public final DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1027
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v4, ""

    move-object v3, v4

    .line 1029
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    :try_start_0
    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1030
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v4

    .line 1034
    .line 1035
    :cond_0
    move-object v4, v3

    move-object v2, v4

    .line 1037
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/CloudDB$11;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/CloudDB$11;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 1043
    return-void

    .line 1033
    :catch_0
    move-exception v4

    new-instance v4, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "Value failed to convert from JSON."

    const-string/jumbo v7, "JSON Retrieval Error."

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public final DefaultRedisServer(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Default Redis Server to use."
        userVisible = false
    .end annotation

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    .line 428
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    if-eqz v2, :cond_0

    .line 429
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    .line 431
    :cond_0
    return-void
.end method

.method public final FirstRemoved(Ljava/lang/Object;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered by the \"RemoveFirstFromList\" function. The argument \"value\" is the object that was the first in the list, and which is now removed."
    .end annotation

    .prologue
    .line 786
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 788
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :try_start_0
    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 789
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v1, v2

    .line 794
    .line 796
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/CloudDB$6;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB$6;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 802
    :goto_0
    return-void

    .line 791
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 792
    const-string/jumbo v2, "CloudDB"

    const-string/jumbo v3, "error while converting to JSON..."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 793
    goto :goto_0
.end method

.method public final GetTagList()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the list of tags for this application. When complete a \"TagList\" event will be triggered with the list of known tags."
    .end annotation

    .prologue
    .line 971
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 972
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 973
    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 974
    :goto_0
    if-eqz v2, :cond_1

    .line 975
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/appinventor/components/runtime/CloudDB$10;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB$10;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 1004
    :goto_1
    return-void

    .line 973
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1002
    :cond_1
    move-object v2, v0

    const-string/jumbo v3, "Not connected to the Internet, cannot list tags"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1004
    goto :goto_1
.end method

.method public final GetValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Value for a tag, doesn\'t return the value but will cause a GotValue event to fire when the value is looked up."
    .end annotation

    .prologue
    .line 704
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 708
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v3, v5

    .line 711
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    .line 712
    move-object v4, v6

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 714
    :goto_0
    if-eqz v5, :cond_1

    .line 717
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/google/appinventor/components/runtime/CloudDB$5;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    move-object v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB$5;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 769
    :goto_1
    return-void

    .line 712
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 767
    :cond_1
    move-object v5, v0

    const-string/jumbo v6, "Cannot fetch variables while off-line."

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 769
    goto :goto_1
.end method

.method public final GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 917
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 921
    move-object v3, v2

    if-nez v3, :cond_0

    .line 922
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Trouble getting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from the server."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 923
    .line 939
    :goto_0
    return-void

    .line 930
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    :try_start_0
    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 931
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v2, v3

    .line 935
    .line 938
    :cond_1
    move-object v3, v0

    const-string/jumbo v4, "GotValue"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 939
    goto :goto_0

    .line 934
    :catch_0
    move-exception v3

    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "Value failed to convert from JSON."

    const-string/jumbo v6, "JSON Retrieval Error."

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public final Initialize()V
    .locals 3

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    if-nez v1, :cond_0

    .line 276
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V

    .line 278
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V

    .line 280
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 281
    return-void
.end method

.method public final ProjectID()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the ProjectID for this CloudDB project."
    .end annotation

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 457
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final ProjectID(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .prologue
    .line 468
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    .line 471
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "CloudDB ProjectID property cannot be blank."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    :cond_1
    return-void
.end method

.method public final RedisPort()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Redis Server port to use. Defaults to 6381"
    .end annotation

    .prologue
    .line 445
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    move v0, v1

    return v0
.end method

.method public final RedisPort(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "6381"
        editorType = "integer"
    .end annotation

    .prologue
    .line 436
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    if-eq v2, v3, :cond_0

    .line 437
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    .line 438
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 440
    :cond_0
    return-void
.end method

.method public final RedisServer()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Redis Server to use to store data. A setting of \"DEFAULT\" means that the MIT server will be used."
    .end annotation

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    const-string/jumbo v1, "DEFAULT"

    move-object v0, v1

    .line 412
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public final RedisServer(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    if-nez v2, :cond_2

    .line 386
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    .line 387
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 392
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    .line 394
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 403
    :goto_0
    return-void

    .line 397
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    .line 398
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 399
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    .line 400
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 403
    :cond_2
    goto :goto_0
.end method

.method public final RemoveFirstFromList(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the first element of a list and atomically remove it. If two devices use this function simultaneously, one will get the first element and the the other will get the second element, or an error if there is no available element. When the element is available, the \"FirstRemoved\" event will be triggered."
    .end annotation

    .prologue
    .line 831
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 835
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/appinventor/components/runtime/CloudDB$7;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB$7;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 846
    return-void
.end method

.method public final StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Store a value at a tag."
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-direct {v6}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 550
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 551
    move-object v3, v7

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 554
    move-object v6, v2

    if-eqz v6, :cond_5

    .line 555
    move-object v6, v2

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 556
    move-object v4, v7

    const-string/jumbo v7, "file:///"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v4

    const-string/jumbo v7, "/storage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 557
    :cond_0
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->readFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v2, v6

    .line 568
    :goto_1
    move v6, v3

    if-eqz v6, :cond_6

    .line 572
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v4, v7

    monitor-enter v6

    .line 573
    const/4 v6, 0x0

    move v3, v6

    .line 574
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 578
    const/4 v6, 0x1

    move v3, v6

    .line 584
    :cond_1
    new-instance v6, Lorg/json/JSONArray;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v6

    .line 586
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v2

    :try_start_2
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 589
    .line 590
    :try_start_3
    new-instance v6, Lcom/google/appinventor/components/runtime/CloudDB$a;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/CloudDB$a;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    move-object v1, v6

    .line 591
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 592
    move v6, v3

    if-eqz v6, :cond_2

    .line 593
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/google/appinventor/components/runtime/CloudDB$4;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/CloudDB$4;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 685
    :cond_2
    move-object v6, v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 689
    :goto_2
    return-void

    .line 551
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 559
    :cond_4
    move-object v6, v2

    :try_start_4
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 561
    goto :goto_1

    .line 562
    :cond_5
    const-string/jumbo v6, ""
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v2, v6

    .line 566
    goto :goto_1

    .line 565
    :catch_0
    move-exception v6

    new-instance v6, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Value failed to convert to JSON."

    const-string/jumbo v9, "JSON Creation Error."

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 588
    :catch_1
    move-exception v6

    :try_start_5
    new-instance v6, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "JSON Error putting value."

    const-string/jumbo v9, "value is not convertable"

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 685
    :catchall_0
    move-exception v6

    move-object v1, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v6, v1

    throw v6

    .line 687
    :cond_6
    move-object v6, v0

    const-string/jumbo v7, "Cannot store values off-line."

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 689
    goto :goto_2
.end method

.method public final TagList(Ljava/util/List;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when we have received the list of known tags. Used with the \"GetTagList\" Function."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1014
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 1015
    move-object v2, v0

    const-string/jumbo v3, "TagList"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 1016
    return-void
.end method

.method public final Token()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This field contains the authentication token used to login to the backed Redis server. For the \"DEFAULT\" server, do not edit this value, the system will fill it in for you. A system administrator may also provide a special value to you which can be used to share data between multiple projects from multiple people. If using your own Redis server, set a password in the server\'s config and enter it here."
        userVisible = false
    .end annotation

    .prologue
    .line 505
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 506
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final Token(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .prologue
    .line 484
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    .line 487
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "CloudDB Token property cannot be blank."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 490
    :cond_1
    return-void
.end method

.method public final UseSSL(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .prologue
    .line 512
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 513
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    .line 514
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 516
    :cond_0
    return-void
.end method

.method public final UseSSL()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set to true to use SSL to talk to CloudDB/Redis server. This should be set to True for the \"DEFAULT\" server."
        userVisible = false
    .end annotation

    .prologue
    .line 522
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    move v0, v1

    return v0
.end method

.method public final getBackground()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 1219
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    move-object v0, v1

    return-object v0
.end method

.method public final getForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 1079
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method public final declared-synchronized getJedis()Lredis/clients/jedis/Jedis;
    .locals 6

    .prologue
    .line 1131
    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    if-nez v1, :cond_0

    .line 1132
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis(Z)Lredis/clients/jedis/Jedis;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    .line 1134
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    monitor-exit v4

    return-object v0

    .line 1131
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final getJedis(Z)Lredis/clients/jedis/Jedis;
    .locals 11

    .prologue
    .line 1084
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    if-eqz v2, :cond_0

    .line 1085
    const/4 v2, 0x0

    move-object v0, v2

    .line 1127
    :goto_0
    return-object v0

    .line 1094
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    if-eqz v2, :cond_1

    .line 1097
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->ensureSslSockFactory()V

    .line 1098
    new-instance v2, Lredis/clients/jedis/Jedis;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lredis/clients/jedis/Jedis;-><init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    move-object v1, v2

    .line 1108
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1109
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lredis/clients/jedis/Jedis;->auth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1127
    :goto_2
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 1100
    :cond_1
    new-instance v2, Lredis/clients/jedis/Jedis;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lredis/clients/jedis/Jedis;-><init>(Ljava/lang/String;IZ)V

    move-object v1, v2

    goto :goto_1

    .line 1111
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lredis/clients/jedis/Jedis;->auth(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lredis/clients/jedis/exceptions/JedisDataException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1126
    goto :goto_2

    .line 1116
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1117
    const-string/jumbo v2, "CloudDB"

    const-string/jumbo v3, "in getJedis()"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1118
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Lredis/clients/jedis/exceptions/JedisConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1119
    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_0

    .line 1120
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 1122
    const-string/jumbo v2, "CloudDB"

    const-string/jumbo v3, "in getJedis()"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1123
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Lredis/clients/jedis/exceptions/JedisDataException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " CloudDB disabled, restart to re-enable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1124
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    .line 1125
    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public final varargs jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lredis/clients/jedis/exceptions/JedisException;
        }
    .end annotation

    .prologue
    .line 1223
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v6

    move-object v5, v6

    .line 1225
    move-object v6, v5

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    :try_start_0
    invoke-virtual {v6, v7, v8, v9}, Lredis/clients/jedis/Jedis;->evalsha(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisNoScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 1232
    :goto_0
    return-object v0

    :catch_0
    move-exception v6

    move-object v6, v5

    move-object v7, v1

    move v8, v3

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lredis/clients/jedis/Jedis;->eval(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public final onClear()V
    .locals 3

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/CloudDB;->shutdown:Z

    .line 303
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 307
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/CloudDB;->onClear()V

    .line 315
    return-void
.end method
