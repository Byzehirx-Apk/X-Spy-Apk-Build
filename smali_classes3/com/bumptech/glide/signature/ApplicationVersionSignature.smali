.class public final Lcom/bumptech/glide/signature/ApplicationVersionSignature;
.super Ljava/lang/Object;
.source "ApplicationVersionSignature.java"


# static fields
.field private static final PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/signature/ApplicationVersionSignature;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
    .locals 7

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 25
    .local v1, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/Key;

    move-object v2, v4

    .line 26
    .local v2, "result":Lcom/bumptech/glide/load/Key;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 27
    move-object v4, v0

    invoke-static {v4}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->obtainVersionSignature(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v4

    move-object v3, v4

    .line 28
    .local v3, "toAdd":Lcom/bumptech/glide/load/Key;
    sget-object v4, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/Key;

    move-object v2, v4

    .line 30
    move-object v4, v2

    if-nez v4, :cond_0

    .line 31
    move-object v4, v3

    move-object v2, v4

    .line 35
    .end local v3    # "toAdd":Lcom/bumptech/glide/load/Key;
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private static obtainVersionSignature(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    const/4 v3, 0x0

    move-object v1, v3

    .line 46
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 50
    .line 52
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 53
    move-object v3, v1

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 57
    .local v2, "versionCode":Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/bumptech/glide/signature/StringSignature;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 47
    .end local v2    # "versionCode":Ljava/lang/String;
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 49
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .local v2, "versionCode":Ljava/lang/String;
    goto :goto_1
.end method

.method static reset()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 41
    return-void
.end method
