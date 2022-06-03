.class public final Lcom/bumptech/glide/request/GenericRequest;
.super Ljava/lang/Object;
.source "GenericRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;
.implements Lcom/bumptech/glide/request/ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/GenericRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/Request;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
        "Lcom/bumptech/glide/request/ResourceCallback;"
    }
.end annotation


# static fields
.field private static final REQUEST_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<****>;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GenericRequest"

.field private static final TO_MEGABYTE:D = 9.5367431640625E-7


# instance fields
.field private animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private engine:Lcom/bumptech/glide/load/engine/Engine;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResourceId:I

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackResourceId:I

.field private isMemoryCacheable:Z

.field private loadProvider:Lcom/bumptech/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

.field private loadedFromMemoryCache:Z

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderResourceId:I

.field private priority:Lcom/bumptech/glide/Priority;

.field private requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

.field private requestListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;"
        }
    .end annotation
.end field

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/Key;

.field private sizeMultiplier:F

.field private startTime:J

.field private status:Lcom/bumptech/glide/request/GenericRequest$Status;

.field private final tag:Ljava/lang/String;

.field private target:Lcom/bumptech/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 59
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    .line 149
    return-void
.end method

.method private canNotifyStatusChanged()Z
    .locals 3

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private canSetResource()Z
    .locals 3

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "suggestion":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_1

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 248
    .local v3, "message":Ljava/lang/StringBuilder;
    move-object v4, v3

    const-string/jumbo v5, " must not be null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 249
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 250
    move-object v4, v3

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 251
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 253
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 255
    .end local v3    # "message":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    if-lez v1, :cond_0

    .line 409
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 411
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return-object v0
.end method

.method private getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    if-lez v1, :cond_0

    .line 387
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 389
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return-object v0
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    if-lez v1, :cond_0

    .line 416
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 418
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return-object v0
.end method

.method private init(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/Key;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    move-object/from16 v2, p0

    .local v2, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object/from16 v3, p1

    .local v3, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    move-object/from16 v4, p2

    .local v4, "model":Ljava/lang/Object;, "TA;"
    move-object/from16 v5, p3

    .local v5, "signature":Lcom/bumptech/glide/load/Key;
    move-object/from16 v6, p4

    .local v6, "context":Landroid/content/Context;
    move-object/from16 v7, p5

    .local v7, "priority":Lcom/bumptech/glide/Priority;
    move-object/from16 v8, p6

    .local v8, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    move/from16 v9, p7

    .local v9, "sizeMultiplier":F
    move-object/from16 v10, p8

    .local v10, "placeholderDrawable":Landroid/graphics/drawable/Drawable;
    move/from16 v11, p9

    .local v11, "placeholderResourceId":I
    move-object/from16 v12, p10

    .local v12, "errorDrawable":Landroid/graphics/drawable/Drawable;
    move/from16 v13, p11

    .local v13, "errorResourceId":I
    move-object/from16 v14, p12

    .local v14, "fallbackDrawable":Landroid/graphics/drawable/Drawable;
    move/from16 v15, p13

    .local v15, "fallbackResourceId":I
    move-object/from16 v16, p14

    .local v16, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TA;TR;>;"
    move-object/from16 v17, p15

    .local v17, "requestCoordinator":Lcom/bumptech/glide/request/RequestCoordinator;
    move-object/from16 v18, p16

    .local v18, "engine":Lcom/bumptech/glide/load/engine/Engine;
    move-object/from16 v19, p17

    .local v19, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    move-object/from16 v20, p18

    .local v20, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    move/from16 v21, p19

    .local v21, "isMemoryCacheable":Z
    move-object/from16 v22, p20

    .local v22, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
    move/from16 v23, p21

    .local v23, "overrideWidth":I
    move/from16 v24, p22

    .local v24, "overrideHeight":I
    move-object/from16 v25, p23

    .local v25, "diskCacheStrategy":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    .line 194
    move-object/from16 v26, v2

    move-object/from16 v27, v4

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 195
    move-object/from16 v26, v2

    move-object/from16 v27, v5

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->signature:Lcom/bumptech/glide/load/Key;

    .line 196
    move-object/from16 v26, v2

    move-object/from16 v27, v14

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    move-object/from16 v26, v2

    move/from16 v27, v15

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    .line 198
    move-object/from16 v26, v2

    move-object/from16 v27, v6

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    .line 199
    move-object/from16 v26, v2

    move-object/from16 v27, v7

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->priority:Lcom/bumptech/glide/Priority;

    .line 200
    move-object/from16 v26, v2

    move-object/from16 v27, v8

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 201
    move-object/from16 v26, v2

    move/from16 v27, v9

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    .line 202
    move-object/from16 v26, v2

    move-object/from16 v27, v10

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    move-object/from16 v26, v2

    move/from16 v27, v11

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    .line 204
    move-object/from16 v26, v2

    move-object/from16 v27, v12

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    move-object/from16 v26, v2

    move/from16 v27, v13

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    .line 206
    move-object/from16 v26, v2

    move-object/from16 v27, v16

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 207
    move-object/from16 v26, v2

    move-object/from16 v27, v17

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 208
    move-object/from16 v26, v2

    move-object/from16 v27, v18

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 209
    move-object/from16 v26, v2

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 210
    move-object/from16 v26, v2

    move-object/from16 v27, v20

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    .line 211
    move-object/from16 v26, v2

    move/from16 v27, v21

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    .line 212
    move-object/from16 v26, v2

    move-object/from16 v27, v22

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 213
    move-object/from16 v26, v2

    move/from16 v27, v23

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    .line 214
    move-object/from16 v26, v2

    move/from16 v27, v24

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    .line 215
    move-object/from16 v26, v2

    move-object/from16 v27, v25

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 216
    move-object/from16 v26, v2

    sget-object v27, Lcom/bumptech/glide/request/GenericRequest$Status;->PENDING:Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 220
    move-object/from16 v26, v4

    if-eqz v26, :cond_2

    .line 221
    const-string/jumbo v26, "ModelLoader"

    move-object/from16 v27, v3

    invoke-interface/range {v27 .. v27}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v27

    const-string/jumbo v28, "try .using(ModelLoader)"

    invoke-static/range {v26 .. v28}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v26, "Transcoder"

    move-object/from16 v27, v3

    invoke-interface/range {v27 .. v27}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v27

    const-string/jumbo v28, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static/range {v26 .. v28}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v26, "Transformation"

    move-object/from16 v27, v19

    const-string/jumbo v28, "try .transform(UnitTransformation.get())"

    invoke-static/range {v26 .. v28}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    move-object/from16 v26, v25

    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 225
    const-string/jumbo v26, "SourceEncoder"

    move-object/from16 v27, v3

    invoke-interface/range {v27 .. v27}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v27

    const-string/jumbo v28, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static/range {v26 .. v28}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    :goto_0
    move-object/from16 v26, v25

    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v26

    if-nez v26, :cond_0

    move-object/from16 v26, v25

    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 235
    :cond_0
    const-string/jumbo v26, "CacheDecoder"

    move-object/from16 v27, v3

    invoke-interface/range {v27 .. v27}, Lcom/bumptech/glide/provider/LoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v27

    const-string/jumbo v28, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static/range {v26 .. v28}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :cond_1
    move-object/from16 v26, v25

    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 239
    const-string/jumbo v26, "Encoder"

    move-object/from16 v27, v3

    invoke-interface/range {v27 .. v27}, Lcom/bumptech/glide/provider/LoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v27

    const-string/jumbo v28, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static/range {v26 .. v28}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    :cond_2
    return-void

    .line 228
    :cond_3
    const-string/jumbo v26, "SourceDecoder"

    move-object/from16 v27, v3

    invoke-interface/range {v27 .. v27}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v27

    const-string/jumbo v28, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static/range {v26 .. v28}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isFirstReadyResource()Z
    .locals 2

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v1}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logV(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v2, "GenericRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " this: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 554
    return-void
.end method

.method private notifyLoadSuccess()V
    .locals 3

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_0

    .line 471
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    .line 473
    :cond_0
    return-void
.end method

.method public static obtain(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/Key;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 117
    move-object/from16 v0, p0

    .local v0, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    move-object/from16 v1, p1

    .local v1, "model":Ljava/lang/Object;, "TA;"
    move-object/from16 v2, p2

    .local v2, "signature":Lcom/bumptech/glide/load/Key;
    move-object/from16 v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object/from16 v4, p4

    .local v4, "priority":Lcom/bumptech/glide/Priority;
    move-object/from16 v5, p5

    .local v5, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    move/from16 v6, p6

    .local v6, "sizeMultiplier":F
    move-object/from16 v7, p7

    .local v7, "placeholderDrawable":Landroid/graphics/drawable/Drawable;
    move/from16 v8, p8

    .local v8, "placeholderResourceId":I
    move-object/from16 v9, p9

    .local v9, "errorDrawable":Landroid/graphics/drawable/Drawable;
    move/from16 v10, p10

    .local v10, "errorResourceId":I
    move-object/from16 v11, p11

    .local v11, "fallbackDrawable":Landroid/graphics/drawable/Drawable;
    move/from16 v12, p12

    .local v12, "fallbackResourceId":I
    move-object/from16 v13, p13

    .local v13, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TA;TR;>;"
    move-object/from16 v14, p14

    .local v14, "requestCoordinator":Lcom/bumptech/glide/request/RequestCoordinator;
    move-object/from16 v15, p15

    .local v15, "engine":Lcom/bumptech/glide/load/engine/Engine;
    move-object/from16 v16, p16

    .local v16, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    move-object/from16 v17, p17

    .local v17, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    move/from16 v18, p18

    .local v18, "isMemoryCacheable":Z
    move-object/from16 v19, p19

    .local v19, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
    move/from16 v20, p20

    .local v20, "overrideWidth":I
    move/from16 v21, p21

    .local v21, "overrideHeight":I
    move-object/from16 v22, p22

    .local v22, "diskCacheStrategy":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    sget-object v24, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    invoke-interface/range {v24 .. v24}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/bumptech/glide/request/GenericRequest;

    move-object/from16 v23, v24

    .line 118
    .local v23, "request":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object/from16 v24, v23

    if-nez v24, :cond_0

    .line 119
    new-instance v24, Lcom/bumptech/glide/request/GenericRequest;

    move-object/from16 v48, v24

    move-object/from16 v24, v48

    move-object/from16 v25, v48

    invoke-direct/range {v25 .. v25}, Lcom/bumptech/glide/request/GenericRequest;-><init>()V

    move-object/from16 v23, v24

    .line 121
    :cond_0
    move-object/from16 v24, v23

    move-object/from16 v25, v0

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move/from16 v31, v6

    move-object/from16 v32, v7

    move/from16 v33, v8

    move-object/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v36, v11

    move/from16 v37, v12

    move-object/from16 v38, v13

    move-object/from16 v39, v14

    move-object/from16 v40, v15

    move-object/from16 v41, v16

    move-object/from16 v42, v17

    move/from16 v43, v18

    move-object/from16 v44, v19

    move/from16 v45, v20

    move/from16 v46, v21

    move-object/from16 v47, v22

    invoke-direct/range {v24 .. v47}, Lcom/bumptech/glide/request/GenericRequest;->init(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V

    .line 144
    move-object/from16 v24, v23

    move-object/from16 v0, v24

    .end local v0    # "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    return-object v0
.end method

.method private onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;TR;)V"
        }
    .end annotation

    .prologue
    .line 518
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v2, p1

    .local v2, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    move-object v3, p2

    .local v3, "result":Ljava/lang/Object;, "TR;"
    move-object v6, v1

    invoke-direct {v6}, Lcom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v6

    move v4, v6

    .line 519
    .local v4, "isFirstResource":Z
    move-object v6, v1

    sget-object v7, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v7, v6, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 520
    move-object v6, v1

    move-object v7, v2

    iput-object v7, v6, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 522
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    move-object v7, v3

    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    move-object v9, v1

    iget-object v9, v9, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move-object v10, v1

    iget-boolean v10, v10, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    move v11, v4

    invoke-interface/range {v6 .. v11}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v6

    if-nez v6, :cond_1

    .line 524
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-object v7, v1

    iget-boolean v7, v7, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    move v8, v4

    invoke-interface {v6, v7, v8}, Lcom/bumptech/glide/request/animation/GlideAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v6

    move-object v5, v6

    .line 525
    .local v5, "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move-object v7, v3

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Lcom/bumptech/glide/request/target/Target;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 528
    .end local v5    # "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
    :cond_1
    move-object v6, v1

    invoke-direct {v6}, Lcom/bumptech/glide/request/GenericRequest;->notifyLoadSuccess()V

    .line 530
    const-string/jumbo v6, "GenericRequest"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 531
    move-object v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Resource ready in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    iget-wide v8, v8, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v8, v9}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-interface {v8}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x3eb0000000000000L    # 9.5367431640625E-7

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " fromCache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    iget-boolean v8, v8, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 534
    :cond_2
    return-void
.end method

.method private releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/Engine;->release(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 342
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 343
    return-void
.end method

.method private setErrorPlaceholder(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v3

    if-nez v3, :cond_0

    .line 394
    .line 405
    :goto_0
    return-void

    .line 397
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    if-nez v3, :cond_3

    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/request/GenericRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 398
    .local v2, "error":Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 399
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/request/GenericRequest;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 401
    :cond_1
    move-object v3, v2

    if-nez v3, :cond_2

    .line 402
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 404
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/bumptech/glide/request/target/Target;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 405
    goto :goto_0

    .line 397
    .end local v2    # "error":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public begin()V
    .locals 7

    .prologue
    .line 262
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v2, v1

    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    .line 263
    move-object v2, v1

    iget-object v2, v2, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 264
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 265
    .line 281
    :goto_0
    return-void

    .line 268
    :cond_0
    move-object v2, v1

    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v3, v2, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 269
    move-object v2, v1

    iget v2, v2, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    move-object v3, v1

    iget v3, v3, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    move-object v2, v1

    move-object v3, v1

    iget v3, v3, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/request/GenericRequest;->onSizeReady(II)V

    .line 275
    :goto_1
    move-object v2, v1

    invoke-virtual {v2}, Lcom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/bumptech/glide/request/GenericRequest;->isFailed()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-direct {v2}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    move-object v2, v1

    iget-object v2, v2, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move-object v3, v1

    invoke-direct {v3}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/target/Target;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_1
    const-string/jumbo v2, "GenericRequest"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finished run method in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 281
    :cond_2
    goto :goto_0

    .line 272
    :cond_3
    move-object v2, v1

    iget-object v2, v2, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/target/Target;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    goto :goto_1
.end method

.method cancel()V
    .locals 3

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 295
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    if-eqz v1, :cond_0

    .line 296
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cancel()V

    .line 297
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 299
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 314
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v1, v2, :cond_0

    .line 315
    .line 327
    :goto_0
    return-void

    .line 317
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/request/GenericRequest;->cancel()V

    .line 319
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v1, :cond_1

    .line 320
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 322
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/target/Target;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_2
    move-object v1, v0

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 327
    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 3

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 3

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 3

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isResourceSet()Z
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return v0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 7

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "GenericRequest"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    const-string/jumbo v2, "GenericRequest"

    const-string/jumbo v3, "load failed"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 545
    :cond_0
    move-object v2, v0

    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v3, v2, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 547
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    move-object v6, v0

    invoke-direct {v6}, Lcom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/bumptech/glide/request/RequestListener;->onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 548
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->setErrorPlaceholder(Ljava/lang/Exception;)V

    .line 550
    :cond_2
    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 482
    move-object v3, v0

    new-instance v4, Ljava/lang/Exception;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " inside, but instead got null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 484
    .line 508
    :goto_0
    return-void

    .line 487
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 488
    .local v2, "received":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 489
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 490
    move-object v3, v0

    new-instance v4, Ljava/lang/Exception;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected to receive an object of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " but instead got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " inside Resource{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    if-eqz v7, :cond_3

    const-string/jumbo v7, ""

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 497
    goto/16 :goto_0

    .line 490
    :cond_2
    const-string/jumbo v7, ""

    goto :goto_1

    :cond_3
    const-string/jumbo v7, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    .line 500
    :cond_4
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/request/GenericRequest;->canSetResource()Z

    move-result v3

    if-nez v3, :cond_5

    .line 501
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 503
    move-object v3, v0

    sget-object v4, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v4, v3, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 504
    goto/16 :goto_0

    .line 507
    :cond_5
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/request/GenericRequest;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V

    .line 508
    goto/16 :goto_0
.end method

.method public onSizeReady(II)V
    .locals 22

    .prologue
    .line 426
    move-object/from16 v2, p0

    .local v2, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move/from16 v3, p1

    .local v3, "width":I
    move/from16 v4, p2

    .local v4, "height":I
    const-string/jumbo v8, "GenericRequest"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 427
    move-object v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Got onSizeReady in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    iget-wide v10, v10, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v10, v11}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 429
    :cond_0
    move-object v8, v2

    iget-object v8, v8, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v9, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v8, v9, :cond_1

    .line 430
    .line 455
    :goto_0
    return-void

    .line 432
    :cond_1
    move-object v8, v2

    sget-object v9, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v9, v8, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 434
    move-object v8, v2

    iget v8, v8, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    move v9, v3

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v3, v8

    .line 435
    move-object v8, v2

    iget v8, v8, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    move v9, v4

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v4, v8

    .line 437
    move-object v8, v2

    iget-object v8, v8, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v8}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v8

    move-object v5, v8

    .line 438
    .local v5, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    move-object v8, v5

    move-object v9, v2

    iget-object v9, v9, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    move v10, v3

    move v11, v4

    invoke-interface {v8, v9, v10, v11}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v8

    move-object v6, v8

    .line 440
    .local v6, "dataFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
    move-object v8, v6

    if-nez v8, :cond_2

    .line 441
    move-object v8, v2

    new-instance v9, Ljava/lang/Exception;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to load model: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    iget-object v12, v12, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 442
    goto :goto_0

    .line 444
    :cond_2
    move-object v8, v2

    iget-object v8, v8, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v8}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v8

    move-object v7, v8

    .line 445
    .local v7, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    const-string/jumbo v8, "GenericRequest"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 446
    move-object v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "finished setup for calling load in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    iget-wide v10, v10, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v10, v11}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 448
    :cond_3
    move-object v8, v2

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 449
    move-object v8, v2

    move-object v9, v2

    iget-object v9, v9, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    move-object v10, v2

    iget-object v10, v10, Lcom/bumptech/glide/request/GenericRequest;->signature:Lcom/bumptech/glide/load/Key;

    move v11, v3

    move v12, v4

    move-object v13, v6

    move-object v14, v2

    iget-object v14, v14, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    move-object v15, v2

    iget-object v15, v15, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    move-object/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bumptech/glide/request/GenericRequest;->priority:Lcom/bumptech/glide/Priority;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v9 .. v20}, Lcom/bumptech/glide/load/engine/Engine;->load(Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v9

    iput-object v9, v8, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 451
    move-object v8, v2

    move-object v9, v2

    iget-object v9, v9, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v8, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 452
    const-string/jumbo v8, "GenericRequest"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 453
    move-object v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "finished onSizeReady in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    iget-wide v10, v10, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v10, v11}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 455
    :cond_4
    goto/16 :goto_0

    .line 451
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/request/GenericRequest;->clear()V

    .line 337
    move-object v1, v0

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 338
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    .line 154
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 155
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    .line 156
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 157
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 161
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 162
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 163
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 164
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 165
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 166
    sget-object v1, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 167
    return-void
.end method
