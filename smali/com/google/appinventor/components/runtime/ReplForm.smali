.class public Lcom/google/appinventor/components/runtime/ReplForm;
.super Lcom/google/appinventor/components/runtime/Form;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String;

.field public static topform:Lcom/google/appinventor/components/runtime/ReplForm;


# instance fields
.field private G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Z

.field private IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

.field private Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Z

.field private f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

.field roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:Ljava/lang/String;

.field sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

.field private showOptionsMenu:Z

.field private xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Form;-><init>()V

    .line 45
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .line 49
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/ReplForm;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Z

    .line 50
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/ReplForm;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Z

    .line 51
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/ReplForm;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Z

    .line 52
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    .line 53
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/ReplForm;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:Ljava/lang/String;

    .line 55
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/ReplForm;->showOptionsMenu:Z

    .line 58
    move-object v1, v0

    new-instance v2, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;-><init>(Lcom/google/appinventor/components/runtime/ReplForm;)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    .line 62
    move-object v1, v0

    sput-object v1, Lcom/google/appinventor/components/runtime/ReplForm;->topform:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 63
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static returnRetvals(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 314
    move-object v0, p0

    sget-object v2, Lcom/google/appinventor/components/runtime/ReplForm;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v2, Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v1, v2

    .line 315
    sget-object v2, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "returnRetvals: "

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 316
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->sendToCompanion(Ljava/lang/String;)V

    .line 317
    return-void
.end method


# virtual methods
.method public ShowOptionsMenu(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ReplForm;->showOptionsMenu:Z

    .line 177
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->ShowOptionsMenu(Z)V

    .line 178
    return-void
.end method

.method protected closeApplicationFromBlocks()V
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lcom/google/appinventor/components/runtime/ReplForm$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/ReplForm$1;-><init>(Lcom/google/appinventor/components/runtime/ReplForm;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Not Yet"

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/RetValManager;->popScreen(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public evalScheme(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->eval(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public getAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ReplForm;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/google/appinventor/components/annotations/SimpleObject;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/annotations/SimpleObject;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 343
    move-object v3, v6

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Lcom/google/appinventor/components/annotations/SimpleObject;->external()Z

    move-result v5

    if-nez v5, :cond_0

    .line 344
    const-string/jumbo v5, "file:///android_asset/"

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 365
    :goto_0
    return-object v0

    .line 347
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 348
    const/4 v5, 0x0

    move-object v3, v5

    .line 350
    :goto_1
    move-object v5, v1

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    new-instance v5, Ljava/io/File;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/ReplForm;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/assets"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 352
    move-object v4, v6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 354
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 361
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 362
    new-instance v5, Ljava/io/File;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 363
    sget-object v5, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "result = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 364
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "file://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 359
    :cond_2
    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 360
    goto/16 :goto_1

    .line 368
    :cond_3
    new-instance v5, Ljava/io/FileNotFoundException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5
.end method

.method public isAssetsLoaded()Z
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Z

    move v0, v1

    return v0
.end method

.method public isDirect()Z
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Z

    move v0, v1

    return v0
.end method

.method protected isRepl()Z
    .locals 2

    .prologue
    .line 373
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public loadComponents(Ljava/util/List;)V
    .locals 19
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
    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v10, Ljava/util/HashSet;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v1

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v1, v10

    .line 279
    sget-object v10, Lcom/google/appinventor/components/runtime/ReplForm;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "componentDexs"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    move-object v2, v10

    .line 280
    new-instance v10, Ljava/io/File;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v0

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/ReplForm;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v10

    .line 281
    move-object v10, v0

    move-object v4, v10

    .line 1251
    new-instance v10, Ljava/io/File;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v4

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/ReplForm;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    .line 1252
    move-object v4, v11

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1253
    move-object v10, v4

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v10

    .line 281
    :goto_0
    if-nez v10, :cond_1

    .line 282
    sget-object v10, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "Unable to create components directory"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 283
    move-object v10, v0

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-string/jumbo v12, "loadComponents"

    const/16 v13, 0xce4

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 284
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x1

    const-string/jumbo v17, "App Inventor"

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x2

    const-string/jumbo v17, "Unable to create component directory."

    aput-object v17, v15, v16

    .line 283
    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 285
    .line 311
    :goto_1
    return-void

    .line 1255
    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const-class v10, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object v4, v10

    .line 289
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v10

    .line 290
    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/ReplForm;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 291
    move-object v10, v3

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v3, v11

    array-length v10, v10

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    :goto_2
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_3

    move-object v10, v3

    move v11, v7

    aget-object v10, v10, v11

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    .line 292
    move-object v8, v11

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 293
    move-object v10, v1

    move-object v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 294
    new-instance v10, Ljava/io/File;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v8

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "classes.jar"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v10

    .line 295
    new-instance v10, Ljava/io/File;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v8

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v8

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".jar"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    .line 296
    move-object v10, v9

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    .line 297
    move-object v10, v8

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/ReplForm;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/util/List;

    move-object v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 298
    sget-object v10, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const-string/jumbo v13, "Loading component dex "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v12, v8

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 299
    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/ReplForm;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/util/List;

    move-object v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 300
    move-object v10, v5

    sget-char v11, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 301
    move-object v10, v5

    move-object v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 291
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 305
    :cond_3
    new-instance v10, Ldalvik/system/DexClassLoader;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v5

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object v15, v4

    invoke-direct {v11, v12, v13, v14, v15}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v3, v10

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 308
    sget-object v10, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 309
    sget-object v10, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 310
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 311
    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 98
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ReplForm;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

    .line 99
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ReplForm;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "external_comps/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ReplForm;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:Ljava/lang/String;

    .line 100
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->onCreate(Landroid/os/Bundle;)V

    .line 101
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ReplForm;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/util/List;

    .line 102
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ReplForm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object v1, v2

    .line 103
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ReplForm;->processExtras(Landroid/content/Intent;Z)V

    .line 104
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 170
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;->showOptionsMenu:Z

    move v0, v2

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/Form;->onDestroy()V

    .line 119
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    if-eqz v1, :cond_0

    .line 120
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->stop()V

    .line 121
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .line 123
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ReplForm;->finish()V

    .line 124
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 125
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->onNewIntent(Landroid/content/Intent;)V

    .line 183
    sget-object v2, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onNewIntent Called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 184
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ReplForm;->processExtras(Landroid/content/Intent;Z)V

    .line 185
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/Form;->onResume()V

    .line 109
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/Form;->onStop()V

    .line 114
    return-void
.end method

.method protected processExtras(Landroid/content/Intent;Z)V
    .locals 9

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 198
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 199
    sget-object v4, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "extras: "

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 200
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    .line 201
    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    sget-object v4, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Extra Key: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 205
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v1

    const-string/jumbo v5, "rundirect"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    sget-object v4, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "processExtras rundirect is true and restart is "

    move v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 207
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/ReplForm;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Z

    .line 208
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/ReplForm;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Z

    .line 209
    move v4, v2

    if-eqz v4, :cond_2

    .line 210
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ReplForm;->clear()V

    .line 211
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    if-eqz v4, :cond_1

    .line 212
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->resetSeq()V

    .line 219
    :goto_1
    return-void

    .line 214
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ReplForm;->startHTTPD(Z)V

    .line 215
    const-string/jumbo v4, "emulator"

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->setHmacKey(Ljava/lang/String;)V

    .line 219
    :cond_2
    goto :goto_1
.end method

.method public sendToCompanion(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    if-nez v2, :cond_0

    .line 320
    sget-object v2, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "No WebRTCNativeMgr!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 321
    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->send(Ljava/lang/String;)V

    .line 324
    goto :goto_0
.end method

.method public setAssetsLoaded()V
    .locals 3

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/ReplForm;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Z

    .line 269
    return-void
.end method

.method public setFormName(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ReplForm;->formName:Ljava/lang/String;

    .line 137
    sget-object v2, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "formName is now "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 138
    return-void
.end method

.method public setIsUSBrepl()V
    .locals 3

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/ReplForm;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Z

    .line 227
    return-void
.end method

.method protected setResult(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setResult: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 147
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    .line 148
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ReplForm;->formName:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ReplForm;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setWebRTCMgr(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .locals 4

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .line 327
    return-void
.end method

.method public startHTTPD(Z)V
    .locals 11

    .prologue
    .line 232
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    if-nez v3, :cond_1

    .line 233
    move-object v3, v0

    move-object v2, v3

    .line 1244
    new-instance v3, Ljava/io/File;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v2

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ReplForm;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    .line 1245
    move-object v2, v4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1246
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 234
    :cond_0
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/16 v6, 0x1f41

    new-instance v7, Ljava/io/File;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/ReplForm;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v8, v1

    move-object v9, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;-><init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .line 235
    sget-object v3, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "started AppInvHTTPD"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 239
    .line 240
    :cond_1
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 238
    sget-object v3, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "Setting up NanoHTTPD: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 240
    goto :goto_0
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 130
    move-object v3, v0

    move-object v4, v2

    const-string/jumbo v5, "open another screen with start value"

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/ReplForm;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ReplForm;->startupValue:Ljava/lang/String;

    .line 132
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/RetValManager;->pushScreen(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    return-void
.end method
