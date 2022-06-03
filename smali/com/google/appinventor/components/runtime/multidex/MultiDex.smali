.class public final Lcom/google/appinventor/components/runtime/multidex/MultiDex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/multidex/MultiDex$c;,
        Lcom/google/appinventor/components/runtime/multidex/MultiDex$a;,
        Lcom/google/appinventor/components/runtime/multidex/MultiDex$b;
    }
.end annotation


# static fields
.field private static final hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Z

.field private static final x18EVrDLKYshSIJOaOzhjZZ2d7f1HPcCxsJsFR3IcZlc2NwZ4Zt12KeOiP0vPHe3:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "code_cache"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "secondary-dexes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->x18EVrDLKYshSIJOaOzhjZZ2d7f1HPcCxsJsFR3IcZlc2NwZ4Zt12KeOiP0vPHe3:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Set;

    .line 76
    const-string/jumbo v0, "java.vm.version"

    .line 77
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Z

    .line 76
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v1, v2

    .line 200
    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 209
    .line 210
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    if-nez v2, :cond_1

    .line 212
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 216
    :goto_0
    return-object v0

    .line 201
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 206
    const-string/jumbo v2, "MultiDex"

    const-string/jumbo v3, "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching."

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 208
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 214
    :cond_1
    move-object v2, v1

    move-object v3, v0

    const/16 v4, 0x80

    .line 215
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 216
    move-object v0, v2

    goto :goto_0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 286
    move-object v4, v2

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 289
    move-object v3, v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 290
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 284
    :catch_0
    move-exception v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 299
    :cond_1
    new-instance v4, Ljava/lang/NoSuchFieldException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Field "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not found in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 315
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 318
    move-object v4, v6

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 319
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 313
    :catch_0
    move-exception v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 328
    :cond_1
    new-instance v5, Ljava/lang/NoSuchMethodException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Method "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with parameters "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    .line 329
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 352
    move-object v1, p0

    new-instance v6, Ljava/io/File;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "secondary-dexes"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 353
    move-object v1, v7

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 354
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Clearing old secondary dex dir ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 355
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 356
    move-object v2, v7

    if-nez v6, :cond_0

    .line 357
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Failed to list secondary dex dir content ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 358
    .line 375
    :goto_0
    return-void

    .line 360
    :cond_0
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 361
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Trying to delete old file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " of size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    .line 362
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 361
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 363
    move-object v6, v5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 364
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Failed to delete old file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 360
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 366
    :cond_1
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Deleted old file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    .line 369
    :cond_2
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3

    .line 370
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Failed to delete secondary dex dir "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    .line 372
    :cond_3
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Deleted old secondary dex dir "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 375
    :cond_4
    goto/16 :goto_0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 252
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 253
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    .line 1380
    move-object v2, v6

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/multidex/MultiDex$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    .line 253
    .line 260
    :goto_0
    return-void

    .line 254
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 255
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    .line 1445
    move-object v2, v6

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/multidex/MultiDex$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    .line 255
    goto :goto_0

    .line 257
    :cond_1
    move-object v3, v0

    move-object v4, v2

    .line 1480
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/multidex/MultiDex$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/ClassLoader;Ljava/util/List;)V

    .line 260
    :cond_2
    goto :goto_0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 2342
    move-object v0, v6

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 2343
    move-object v1, v6

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 2344
    move-object v3, v6

    .line 2345
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    move-object v6, v3

    array-length v6, v6

    move-object v7, v2

    array-length v7, v7

    add-int/2addr v6, v7

    .line 2344
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 2346
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v3

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2347
    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v4

    move-object v8, v3

    array-length v8, v8

    move-object v9, v2

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2348
    move-object v5, v1

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    :goto_0
    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 268
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/multidex/a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    const/4 v1, 0x0

    move v0, v1

    .line 272
    :goto_1
    return v0

    .line 271
    :cond_0
    goto :goto_0

    .line 272
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_1
.end method

.method public static install(Landroid/content/Context;Z)Z
    .locals 12

    .prologue
    .line 95
    move-object v0, p0

    move v1, p1

    sget-object v6, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 96
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "install: doIt = "

    move v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 97
    sget-boolean v6, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Z

    if-eqz v6, :cond_0

    .line 98
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "VM has multidex support, MultiDex support library is disabled."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 99
    const/4 v6, 0x1

    move v0, v6

    .line 191
    :goto_0
    return v0

    .line 102
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 103
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Multi dex installation failed. SDK "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is unsupported. Min SDK version is 4."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 108
    :cond_1
    move-object v6, v0

    :try_start_0
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 109
    move-object v2, v7

    if-nez v6, :cond_2

    .line 111
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "applicationInfo is null, returning"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 112
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 115
    :cond_2
    sget-object v6, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Set;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v3, v7

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    move-object v6, v2

    :try_start_1
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object v4, v6

    .line 117
    sget-object v6, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Set;

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    const/4 v6, 0x1

    move-object v7, v3

    monitor-exit v7

    move v0, v6

    goto :goto_0

    .line 120
    :cond_3
    sget-object v6, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Set;

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 122
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-le v6, v7, :cond_4

    .line 123
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "MultiDex is not guaranteed to work in SDK version "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it\'s not the case here: java.vm.version=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "java.vm.version"

    .line 128
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 138
    :cond_4
    move-object v6, v0

    :try_start_2
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    move-object v4, v6

    .line 147
    .line 148
    move-object v6, v4

    if-nez v6, :cond_5

    .line 150
    :try_start_3
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "Context class loader is null. Must be running in test mode. Skip patching."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 153
    const/4 v6, 0x1

    move-object v7, v3

    monitor-exit v7

    move v0, v6

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 144
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching."

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 146
    const/4 v6, 0x1

    move-object v7, v3

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v6

    goto/16 :goto_0

    .line 157
    :cond_5
    move-object v6, v0

    :try_start_4
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    .line 163
    :goto_1
    :try_start_5
    new-instance v6, Ljava/io/File;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sget-object v9, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->x18EVrDLKYshSIJOaOzhjZZ2d7f1HPcCxsJsFR3IcZlc2NwZ4Zt12KeOiP0vPHe3:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 164
    move v6, v1

    if-nez v6, :cond_6

    move-object v6, v0

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/multidex/a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 165
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "Returning because of mustLoad"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 166
    const/4 v6, 0x0

    move-object v7, v3

    monitor-exit v7

    move v0, v6

    goto/16 :goto_0

    .line 158
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 159
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning."

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_1

    .line 168
    :cond_6
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "Proceeding with installation..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 169
    move-object v6, v0

    move-object v7, v2

    move-object v8, v5

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/multidex/a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;

    move-result-object v6

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 170
    move-object v1, v7

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 171
    move-object v6, v4

    move-object v7, v5

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V

    .line 184
    :goto_2
    move-object v6, v3

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "install done"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 191
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 173
    :cond_7
    :try_start_6
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "Files were not valid zip files.  Forcing a reload."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 175
    move-object v6, v0

    move-object v7, v2

    move-object v8, v5

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/multidex/a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;

    move-result-object v6

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 177
    move-object v1, v7

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 178
    move-object v6, v4

    move-object v7, v5

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V

    goto :goto_2

    .line 181
    :cond_8
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Zip files were not valid."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 184
    :catchall_0
    move-exception v6

    move-object v0, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v6, v0

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 186
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 187
    const-string/jumbo v6, "MultiDex"

    const-string/jumbo v7, "Multidex installation failure"

    move-object v8, v2

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 188
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Multi dex installation failed ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 226
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 227
    move-object v4, v0

    if-eqz v4, :cond_1

    .line 228
    const-string/jumbo v4, "(\\d+)\\.(\\d+)(\\.\\d+)?"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 229
    move-object v2, v5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    move-object v4, v2

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 232
    move-object v4, v2

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v2, v4

    .line 233
    move v4, v3

    const/4 v5, 0x2

    if-gt v4, v5, :cond_0

    move v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v4, v2

    if-lez v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 238
    .line 241
    :cond_1
    :goto_1
    const-string/jumbo v4, "MultiDex"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "VM with version "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    if-eqz v6, :cond_3

    const-string/jumbo v6, " has multidex support"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 245
    move v4, v1

    move v0, v4

    return v0

    .line 233
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    .line 241
    :cond_3
    const-string/jumbo v6, " does not have multidex support"

    goto :goto_2
.end method
