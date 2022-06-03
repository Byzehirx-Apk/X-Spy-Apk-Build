.class public Lcom/microsoft/appcenter/utils/InstrumentationRegistryHelper;
.super Ljava/lang/Object;
.source "InstrumentationRegistryHelper.java"


# static fields
.field private static final LOCATIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "androidx.test.platform.app.InstrumentationRegistry"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "androidx.test.InstrumentationRegistry"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "android.support.test.InstrumentationRegistry"

    aput-object v3, v1, v2

    sput-object v0, Lcom/microsoft/appcenter/utils/InstrumentationRegistryHelper;->LOCATIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/InstrumentationRegistryHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArguments()Landroid/os/Bundle;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v7, 0x0

    move-object v0, v7

    .line 30
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v7, Lcom/microsoft/appcenter/utils/InstrumentationRegistryHelper;->LOCATIONS:[Ljava/lang/String;

    move-object v1, v7

    move-object v7, v1

    array-length v7, v7

    move v2, v7

    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_0

    move-object v7, v1

    move v8, v3

    aget-object v7, v7, v8

    move-object v4, v7

    .line 32
    .local v4, "location":Ljava/lang/String;
    move-object v7, v4

    :try_start_0
    invoke-static {v7}, Lcom/microsoft/appcenter/utils/InstrumentationRegistryHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v5, v7

    .line 33
    .local v5, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v5

    const-string/jumbo v8, "getArguments"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v6, v7

    .line 34
    .local v6, "getArguments":Ljava/lang/reflect/Method;
    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .end local v0    # "exception":Ljava/lang/Exception;
    return-object v0

    .line 35
    .end local v5    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "getArguments":Ljava/lang/reflect/Method;
    .restart local v0    # "exception":Ljava/lang/Exception;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 36
    .local v5, "e":Ljava/lang/Exception;
    move-object v7, v5

    move-object v0, v7

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "className":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "className":Ljava/lang/String;
    return-object v0
.end method
