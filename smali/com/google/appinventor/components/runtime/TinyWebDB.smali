.class public Lcom/google/appinventor/components/runtime/TinyWebDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that communicates with a Web service to store and retrieve information."
    iconName = "images/tinyWebDB.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# instance fields
.field private VihNyRIYpiuVGhDxhZD9FEeZY0Q1YjvMZGuz6ngatU6E3Tfj3PPYt3ibIHEBq90c:Ljava/lang/String;

.field private androidUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 96
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/TinyWebDB;->androidUIHandler:Landroid/os/Handler;

    .line 99
    move-object v2, v0

    const-string/jumbo v3, "http://tinywebdb.builder.makeroid.io/"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/TinyWebDB;->VihNyRIYpiuVGhDxhZD9FEeZY0Q1YjvMZGuz6ngatU6E3Tfj3PPYt3ibIHEBq90c:Ljava/lang/String;

    .line 100
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TinyWebDB;->androidUIHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 1270
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/TinyWebDB$4;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V

    move-object v2, v3

    .line 1325
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/TinyWebDB;->VihNyRIYpiuVGhDxhZD9FEeZY0Q1YjvMZGuz6ngatU6E3Tfj3PPYt3ibIHEBq90c:Ljava/lang/String;

    const-string/jumbo v5, "getvalue"

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/http/NameValuePair;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "tag"

    move-object v12, v1

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v7, v8

    .line 1328
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v7, v2

    .line 1325
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommandReturningArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 73
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 15

    .prologue
    .line 73
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v0

    move-object v0, v4

    .line 1187
    new-instance v4, Lcom/google/appinventor/components/runtime/TinyWebDB$2;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/TinyWebDB$2;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;)V

    move-object v3, v4

    .line 1213
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TinyWebDB;->VihNyRIYpiuVGhDxhZD9FEeZY0Q1YjvMZGuz6ngatU6E3Tfj3PPYt3ibIHEBq90c:Ljava/lang/String;

    const-string/jumbo v6, "storeavalue"

    const/4 v7, 0x2

    new-array v7, v7, [Lorg/apache/http/NameValuePair;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x0

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "tag"

    move-object v13, v1

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v8, v9

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x1

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "value"

    move-object v13, v2

    .line 1218
    invoke-static {v13}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v8, v9

    .line 1215
    invoke-static {v7}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v8, v3

    .line 1213
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    return-void

    .line 1221
    :catch_0
    move-exception v4

    new-instance v4, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-string/jumbo v6, "Value failed to convert to JSON."

    const-string/jumbo v7, "JSON Creation Error."

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public GetValue(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "GetValue asks the Web service to get the value stored under the given tag."
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/google/appinventor/components/runtime/TinyWebDB$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/TinyWebDB$3;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V

    .line 265
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a GetValue server request has succeeded."
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

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

    .line 343
    return-void
.end method

.method public ServiceURL()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TinyWebDB;->VihNyRIYpiuVGhDxhZD9FEeZY0Q1YjvMZGuz6ngatU6E3Tfj3PPYt3ibIHEBq90c:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://tinywebdb.builder.makeroid.io"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the URL of the  Web service."
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/TinyWebDB;->VihNyRIYpiuVGhDxhZD9FEeZY0Q1YjvMZGuz6ngatU6E3Tfj3PPYt3ibIHEBq90c:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Asks the Web service to store the given value under the given tag."
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/google/appinventor/components/runtime/TinyWebDB$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/TinyWebDB$1;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public ValueStored()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a StoreValue server request has succeeded."
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "ValueStored"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 237
    return-void
.end method

.method public WebServiceError(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the communication with the Web service signaled an error."
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "WebServiceError"

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

    .line 355
    return-void
.end method
