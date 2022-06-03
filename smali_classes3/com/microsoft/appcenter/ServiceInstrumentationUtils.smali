.class Lcom/microsoft/appcenter/ServiceInstrumentationUtils;
.super Ljava/lang/Object;
.source "ServiceInstrumentationUtils.java"


# static fields
.field static final DISABLE_ALL_SERVICES:Ljava/lang/String; = "All"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DISABLE_SERVICES:Ljava/lang/String; = "APP_CENTER_DISABLE"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ServiceInstrumentationUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isServiceDisabledByInstrumentation(Ljava/lang/String;)Z
    .locals 10

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "serviceName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/InstrumentationRegistryHelper;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    move-object v1, v8

    .line 41
    .local v1, "arguments":Landroid/os/Bundle;
    move-object v8, v1

    const-string/jumbo v9, "APP_CENTER_DISABLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 42
    .local v2, "disableServices":Ljava/lang/String;
    move-object v8, v2

    if-nez v8, :cond_0

    .line 43
    const/4 v8, 0x0

    move v0, v8

    .line 55
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v1    # "arguments":Landroid/os/Bundle;
    .end local v2    # "disableServices":Ljava/lang/String;
    :goto_0
    return v0

    .line 45
    .restart local v0    # "serviceName":Ljava/lang/String;
    .restart local v1    # "arguments":Landroid/os/Bundle;
    .restart local v2    # "disableServices":Ljava/lang/String;
    :cond_0
    move-object v8, v2

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 46
    .local v3, "disableServicesList":[Ljava/lang/String;
    move-object v8, v3

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_3

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 47
    .local v7, "service":Ljava/lang/String;
    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 48
    move-object v8, v7

    const-string/jumbo v9, "All"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v7

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    .line 49
    :cond_1
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 46
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 52
    .end local v7    # "service":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 53
    .end local v1    # "arguments":Landroid/os/Bundle;
    .end local v2    # "disableServices":Ljava/lang/String;
    .end local v3    # "disableServicesList":[Ljava/lang/String;
    :catch_0
    move-exception v8

    :goto_2
    move-object v1, v8

    .line 54
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "AppCenter"

    const-string/jumbo v9, "Cannot read instrumentation variables in a non-test environment."

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    goto :goto_2
.end method
