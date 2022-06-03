.class Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/BundleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BundleCompatBaseImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatBaseImpl"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 10

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "bundle":Landroid/os/Bundle;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    sget-boolean v3, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    if-nez v3, :cond_0

    .line 50
    :try_start_0
    const-class v3, Landroid/os/Bundle;

    const-string/jumbo v4, "getIBinder"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 51
    sget-object v3, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    .line 58
    :cond_0
    sget-object v3, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 60
    :try_start_1
    sget-object v3, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v3

    .line 67
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-object v0

    .line 52
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 53
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v3, "BundleCompatBaseImpl"

    const-string/jumbo v4, "Failed to retrieve getIBinder method"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0

    .line 61
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    :goto_2
    move-object v2, v3

    .line 63
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BundleCompatBaseImpl"

    const-string/jumbo v4, "Failed to invoke getIBinder via reflection"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 64
    const/4 v3, 0x0

    sput-object v3, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 61
    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 11

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "bundle":Landroid/os/Bundle;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "binder":Landroid/os/IBinder;
    sget-boolean v4, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    if-nez v4, :cond_0

    .line 73
    :try_start_0
    const-class v4, Landroid/os/Bundle;

    const-string/jumbo v5, "putIBinder"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    .line 74
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 75
    sget-object v4, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    :goto_0
    const/4 v4, 0x1

    sput-boolean v4, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    .line 82
    :cond_0
    sget-object v4, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 84
    :try_start_1
    sget-object v4, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 89
    .line 91
    :cond_1
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 77
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "BundleCompatBaseImpl"

    const-string/jumbo v5, "Failed to retrieve putIBinder method"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0

    .line 85
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    :goto_2
    move-object v3, v4

    .line 87
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BundleCompatBaseImpl"

    const-string/jumbo v5, "Failed to invoke putIBinder via reflection"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 88
    const/4 v4, 0x0

    sput-object v4, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 85
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_2
.end method
