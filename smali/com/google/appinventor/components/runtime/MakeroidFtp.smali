.class public Lcom/google/appinventor/components/runtime/MakeroidFtp;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "write in ode"
    iconName = "images/ftp.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "commons-net.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MakeroidFtp$c;,
        Lcom/google/appinventor/components/runtime/MakeroidFtp$d;,
        Lcom/google/appinventor/components/runtime/MakeroidFtp$b;,
        Lcom/google/appinventor/components/runtime/MakeroidFtp$a;
    }
.end annotation


# instance fields
.field private D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Ljava/lang/String;

.field private FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Ljava/lang/String;

.field private MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

.field private port:I

.field private sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 53
    move-object v2, v0

    const-string/jumbo v3, "/"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Ljava/lang/String;

    .line 54
    move-object v2, v0

    const-string/jumbo v3, "ftp.example.org"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Ljava/lang/String;

    .line 55
    move-object v2, v0

    const-string/jumbo v3, "Your Username"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Ljava/lang/String;

    .line 56
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Ljava/lang/String;

    .line 57
    move-object v2, v0

    const/16 v3, 0x15

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->port:I

    .line 62
    move-object v2, v0

    new-instance v3, Lorg/apache/commons/net/ftp/FTPClient;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    .line 64
    const-string/jumbo v2, "Makeroid Ftp"

    const-string/jumbo v3, "Makeroid Ftp Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 65
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidFtp;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFtp;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFtp;)I
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFtp;->port:I

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFtp;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFtp;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFtp;)Lorg/apache/commons/net/ftp/FTPClient;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidFtp;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFtp;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public Connect()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the connection to the ftp server."
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidFtp$a;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidFtp$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;B)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidFtp$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 179
    return-void
.end method

.method public ConnectError(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the reason if a try to connect was not successful."
    .end annotation

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ConnectError"

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

    .line 401
    return-void
.end method

.method public ConnectionStatus(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the status of the connection. If it is connect it will return true, else false. "
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ConnectionStatus"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 373
    return-void
.end method

.method public Disconnect()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disconnect the current connection."
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidFtp$b;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidFtp$b;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;B)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidFtp$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 210
    return-void
.end method

.method public DisconnectError(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the reason if a try to disconnect was not successful."
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "DisconnectError"

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

    .line 407
    return-void
.end method

.method public DownloadDone()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is invoked when the download is finished."
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "DownloadDone"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 383
    return-void
.end method

.method public DownloadError(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the reason if a download was not successful."
    .end annotation

    .prologue
    .line 394
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "DownloadError"

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

    .line 395
    return-void
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start downloading a file."
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFtp;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v5, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 309
    return-void
.end method

.method public FtpServer()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the ftp server url."
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFtp;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public FtpServer(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ftp.example.org"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the ftp server url."
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public GetListOfFiles(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get a list of files in a directory. Returns a empty list if a error occurs."
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Ljava/io/File;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 160
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 161
    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v6

    .line 164
    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v1, v7

    array-length v6, v6

    move v2, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_0

    move-object v6, v1

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 165
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 168
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 173
    :goto_1
    return-object v0

    .line 170
    :catch_0
    move-exception v6

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    .line 173
    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method

.method public Password()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the password."
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFtp;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Password(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the password to login into the ftp server."
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public Port()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the ftp port number."
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFtp;->port:I

    move v0, v1

    return v0
.end method

.method public Port(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "21"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the ftp port number."
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->port:I

    .line 104
    return-void
.end method

.method public UploadDone()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is invoked when the upload is finished."
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "UploadDone"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 378
    return-void
.end method

.method public UploadError(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the reason if a upload was not successful."
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "UploadError"

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

    .line 389
    return-void
.end method

.method public UploadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start uploading a file."
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFtp;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v5, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 252
    return-void
.end method

.method public Username()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the username."
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFtp;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Username(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Your Username"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the username to login into the ftp server."
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public WorkingDirectory()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the ftp working dir."
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFtp;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public WorkingDirectory(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "/"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the ftp working dir."
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Ljava/lang/String;

    .line 73
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 76
    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 75
    const-string/jumbo v2, "Makeroid Ftp"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 78
    goto :goto_0
.end method

.method public deleteDir(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a directory on the ftp server."
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->removeDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 153
    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 152
    const-string/jumbo v2, "Makeroid Ftp"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "mkdiRd"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 154
    goto :goto_0
.end method

.method public makeDir(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make/create a directory on the ftp server."
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 144
    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 143
    const-string/jumbo v2, "Makeroid Ftp"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "mkdiRd"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 145
    goto :goto_0
.end method
