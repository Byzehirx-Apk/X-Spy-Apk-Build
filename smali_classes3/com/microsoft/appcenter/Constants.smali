.class public Lcom/microsoft/appcenter/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static APPLICATION_DEBUGGABLE:Z = false

.field public static final APP_SECRET:Ljava/lang/String; = "App-Secret"

.field public static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final COMMON_SCHEMA_PREFIX_SEPARATOR:Ljava/lang/String; = ":"

.field public static final DATABASE:Ljava/lang/String; = "com.microsoft.appcenter.documents"

.field static final DEFAULT_TRIGGER_COUNT:I = 0x32

.field public static final DEFAULT_TRIGGER_INTERVAL:I = 0xbb8

.field static final DEFAULT_TRIGGER_MAX_PARALLEL_REQUESTS:I = 0x3

.field public static FILES_PATH:Ljava/lang/String; = null

.field public static final READONLY_TABLE:Ljava/lang/String; = "app_documents"

.field public static final USER_TABLE_FORMAT:Ljava/lang/String; = "user_%s_documents"

.field public static final WRAPPER_SDK_NAME_NDK:Ljava/lang/String; = "appcenter.ndk"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/appcenter/Constants;->FILES_PATH:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/microsoft/appcenter/Constants;->APPLICATION_DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/Constants;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadFilesPath(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 105
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 106
    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/microsoft/appcenter/Constants;->FILES_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 111
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Exception thrown when accessing the application filesystem"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static loadFromContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    invoke-static {v1}, Lcom/microsoft/appcenter/Constants;->loadFilesPath(Landroid/content/Context;)V

    .line 88
    move-object v1, v0

    invoke-static {v1}, Lcom/microsoft/appcenter/Constants;->setDebuggableFlag(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method private static setDebuggableFlag(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/microsoft/appcenter/Constants;->APPLICATION_DEBUGGABLE:Z

    .line 122
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
