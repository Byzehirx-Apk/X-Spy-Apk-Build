.class public Lcom/bumptech/glide/GenericRequestBuilder;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/GenericRequestBuilder$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final context:Landroid/content/Context;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private errorId:I

.field private errorPlaceholder:Landroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackResource:I

.field protected final glide:Lcom/bumptech/glide/Glide;

.field private isCacheable:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private isTransformationSet:Z

.field protected final lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

.field private loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/ChildLoadProvider",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field protected final modelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TModelType;>;"
        }
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderId:I

.field private priority:Lcom/bumptech/glide/Priority;

.field private requestListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

.field private signature:Lcom/bumptech/glide/load/Key;

.field private sizeMultiplier:Ljava/lang/Float;

.field private thumbSizeMultiplier:Ljava/lang/Float;

.field private thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TResourceType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    move-object/from16 v3, p3

    .local v3, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object/from16 v4, p4

    .local v4, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    move-object/from16 v5, p5

    .local v5, "glide":Lcom/bumptech/glide/Glide;
    move-object/from16 v6, p6

    .local v6, "requestTracker":Lcom/bumptech/glide/manager/RequestTracker;
    move-object/from16 v7, p7

    .local v7, "lifecycle":Lcom/bumptech/glide/manager/Lifecycle;
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 59
    move-object v8, v0

    invoke-static {}, Lcom/bumptech/glide/signature/EmptySignature;->obtain()Lcom/bumptech/glide/signature/EmptySignature;

    move-result-object v9

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    .line 68
    move-object v8, v0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    .line 71
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    .line 72
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    .line 73
    move-object v8, v0

    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v9

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 74
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    .line 75
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    .line 76
    move-object v8, v0

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 77
    move-object v8, v0

    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v9

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 97
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    .line 98
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->modelClass:Ljava/lang/Class;

    .line 99
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 100
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    .line 101
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 102
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    .line 103
    move-object v8, v0

    move-object v9, v3

    if-eqz v9, :cond_0

    new-instance v9, Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v3

    invoke-direct {v10, v11}, Lcom/bumptech/glide/provider/ChildLoadProvider;-><init>(Lcom/bumptech/glide/provider/LoadProvider;)V

    :goto_0
    iput-object v9, v8, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    .line 106
    move-object v8, v1

    if-nez v8, :cond_1

    .line 107
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "Context can\'t be null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 103
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 109
    :cond_1
    move-object v8, v2

    if-eqz v8, :cond_2

    move-object v8, v3

    if-nez v8, :cond_2

    .line 110
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "LoadProvider must not be null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 112
    :cond_2
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v2, p2

    .local v2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    move-object v3, p3

    .local v3, "other":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/bumptech/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    move-object v6, v3

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->modelClass:Ljava/lang/Class;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    iget-object v9, v9, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    move-object v10, v3

    iget-object v10, v10, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    move-object v11, v3

    iget-object v11, v11, Lcom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    invoke-direct/range {v4 .. v11}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 87
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    iput-object v5, v4, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    .line 88
    move-object v4, v0

    move-object v5, v3

    iget-boolean v5, v5, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    iput-boolean v5, v4, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    .line 89
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    iput-object v5, v4, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    .line 90
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v5, v4, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 91
    move-object v4, v0

    move-object v5, v3

    iget-boolean v5, v5, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    iput-boolean v5, v4, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    .line 92
    return-void
.end method

.method private buildRequest(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    if-nez v2, :cond_0

    .line 795
    move-object v2, v0

    sget-object v3, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    .line 797
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/GenericRequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method private buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    move-object v2, p2

    .local v2, "parentCoordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    if-eqz v6, :cond_4

    .line 802
    move-object v6, v0

    iget-boolean v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    if-eqz v6, :cond_0

    .line 803
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 807
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 808
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    iput-object v7, v6, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 811
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    if-nez v6, :cond_2

    .line 812
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    move-object v7, v0

    invoke-direct {v7}, Lcom/bumptech/glide/GenericRequestBuilder;->getThumbnailPriority()Lcom/bumptech/glide/Priority;

    move-result-object v7

    iput-object v7, v6, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    .line 815
    :cond_2
    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-static {v6, v7}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget v7, v7, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-static {v6, v7}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 818
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    move-object v8, v0

    iget v8, v8, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v6

    .line 821
    :cond_3
    new-instance v6, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    move-object v3, v6

    .line 822
    .local v3, "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v6

    move-object v4, v6

    .line 824
    .local v4, "fullRequest":Lcom/bumptech/glide/request/Request;
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    .line 826
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/GenericRequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v6

    move-object v5, v6

    .line 827
    .local v5, "thumbRequest":Lcom/bumptech/glide/request/Request;
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    .line 828
    move-object v6, v3

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    .line 829
    move-object v6, v3

    move-object v0, v6

    .line 839
    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .end local v3    # "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    .end local v4    # "fullRequest":Lcom/bumptech/glide/request/Request;
    .end local v5    # "thumbRequest":Lcom/bumptech/glide/request/Request;
    :goto_0
    return-object v0

    .line 830
    .restart local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    if-eqz v6, :cond_5

    .line 832
    new-instance v6, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    move-object v3, v6

    .line 833
    .restart local v3    # "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v6

    move-object v4, v6

    .line 834
    .restart local v4    # "fullRequest":Lcom/bumptech/glide/request/Request;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v0

    invoke-direct {v9}, Lcom/bumptech/glide/GenericRequestBuilder;->getThumbnailPriority()Lcom/bumptech/glide/Priority;

    move-result-object v9

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v6

    move-object v5, v6

    .line 835
    .local v5, "thumbnailRequest":Lcom/bumptech/glide/request/Request;
    move-object v6, v3

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    .line 836
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 839
    .end local v3    # "coordinator":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    .end local v4    # "fullRequest":Lcom/bumptech/glide/request/Request;
    .end local v5    # "thumbnailRequest":Lcom/bumptech/glide/request/Request;
    :cond_5
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method private getThumbnailPriority()Lcom/bumptech/glide/Priority;
    .locals 4

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    sget-object v3, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    if-ne v2, v3, :cond_0

    .line 784
    sget-object v2, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    move-object v1, v2

    .line 790
    .local v1, "result":Lcom/bumptech/glide/Priority;
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0

    .line 785
    .end local v1    # "result":Lcom/bumptech/glide/Priority;
    .restart local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    sget-object v3, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    if-ne v2, v3, :cond_1

    .line 786
    sget-object v2, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    move-object v1, v2

    .restart local v1    # "result":Lcom/bumptech/glide/Priority;
    goto :goto_0

    .line 788
    .end local v1    # "result":Lcom/bumptech/glide/Priority;
    :cond_1
    sget-object v2, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    move-object v1, v2

    .restart local v1    # "result":Lcom/bumptech/glide/Priority;
    goto :goto_0
.end method

.method private obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;F",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 845
    move-object/from16 v1, p0

    .local v1, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object/from16 v2, p1

    .local v2, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    move/from16 v3, p2

    .local v3, "sizeMultiplier":F
    move-object/from16 v4, p3

    .local v4, "priority":Lcom/bumptech/glide/Priority;
    move-object/from16 v5, p4

    .local v5, "requestCoordinator":Lcom/bumptech/glide/request/RequestCoordinator;
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-object v7, v1

    iget-object v7, v7, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    move-object v9, v1

    iget-object v9, v9, Lcom/bumptech/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    move-object v10, v4

    move-object v11, v2

    move v12, v3

    move-object v13, v1

    iget-object v13, v13, Lcom/bumptech/glide/GenericRequestBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    move-object v14, v1

    iget v14, v14, Lcom/bumptech/glide/GenericRequestBuilder;->placeholderId:I

    move-object v15, v1

    iget-object v15, v15, Lcom/bumptech/glide/GenericRequestBuilder;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->errorId:I

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->fallbackResource:I

    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/bumptech/glide/Glide;->getEngine()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v21

    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    move/from16 v24, v0

    move-object/from16 v25, v1

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-object/from16 v25, v0

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    move/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    move/from16 v27, v0

    move-object/from16 v28, v1

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v28, v0

    invoke-static/range {v6 .. v28}, Lcom/bumptech/glide/request/GenericRequest;->obtain(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v1
.end method


# virtual methods
.method public animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move v1, p1

    .local v1, "animationId":I
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TTranscodeType;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 425
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Animation factory must not be null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 429
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "animator":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method applyCenterCrop()V
    .locals 0

    .prologue
    .line 775
    .local p0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .prologue
    .line 779
    .local p0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-void
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "cacheDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TResourceType;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v2, :cond_0

    .line 229
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setCacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 232
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v2, v0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/GenericRequestBuilder;

    move-object v1, v2

    .line 633
    .local v1, "clone":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-virtual {v3}, Lcom/bumptech/glide/provider/ChildLoadProvider;->clone()Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0

    .line 633
    .restart local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 635
    .end local v1    # "clone":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 636
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TDataType;TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TDataType;TResourceType;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v2, :cond_0

    .line 208
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setSourceDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 211
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "strategy":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 273
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v2

    move-object v1, v2

    .line 368
    .local v1, "animation":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TTranscodeType;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v2

    move-object v1, v2

    .line 340
    .local v1, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TResourceType;>;"
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/bumptech/glide/load/Transformation;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TResourceType;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v2, :cond_0

    .line 294
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setEncoder(Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 297
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public error(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->errorId:I

    .line 512
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 525
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->fallbackResource:I

    .line 499
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 478
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public into(II)Lcom/bumptech/glide/request/FutureTarget;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v4, Lcom/bumptech/glide/request/RequestFutureTarget;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v6}, Lcom/bumptech/glide/Glide;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;II)V

    move-object v3, v4

    .line 725
    .local v3, "target":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TModelType;TTranscodeType;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v4}, Lcom/bumptech/glide/Glide;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/bumptech/glide/GenericRequestBuilder$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/GenericRequestBuilder$1;-><init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/request/RequestFutureTarget;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 734
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 684
    move-object v2, v1

    if-nez v2, :cond_0

    .line 685
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "You must pass in a non null View"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 688
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->isTransformationSet:Z

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 689
    sget-object v2, Lcom/bumptech/glide/GenericRequestBuilder$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 704
    :cond_1
    :goto_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/Glide;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0

    .line 691
    .restart local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    :pswitch_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/GenericRequestBuilder;->applyCenterCrop()V

    .line 692
    goto :goto_0

    .line 696
    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/GenericRequestBuilder;->applyFitCenter()V

    .line 697
    goto :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "target":Lcom/bumptech/glide/request/target/Target;, "TY;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 650
    move-object v4, v1

    if-nez v4, :cond_0

    .line 651
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "You must pass in a non null Target"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 653
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    if-nez v4, :cond_1

    .line 654
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "You must first set a model (try #load())"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 657
    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v4

    move-object v2, v4

    .line 659
    .local v2, "previous":Lcom/bumptech/glide/request/Request;
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 660
    move-object v4, v2

    invoke-interface {v4}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 661
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/manager/RequestTracker;->removeRequest(Lcom/bumptech/glide/request/Request;)V

    .line 662
    move-object v4, v2

    invoke-interface {v4}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 665
    :cond_2
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/GenericRequestBuilder;->buildRequest(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/Request;

    move-result-object v4

    move-object v3, v4

    .line 666
    .local v3, "request":Lcom/bumptech/glide/request/Request;
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    .line 667
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 668
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/manager/RequestTracker;->runRequest(Lcom/bumptech/glide/request/Request;)V

    .line 670
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TModelType;TTranscodeType;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 540
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TModelType;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    .line 614
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    .line 615
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 571
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 573
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    .line 574
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    .line 576
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->placeholderId:I

    .line 443
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 456
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public preload()Lcom/bumptech/glide/request/target/Target;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, v0

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->preload(II)Lcom/bumptech/glide/request/target/Target;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public preload(II)Lcom/bumptech/glide/request/target/Target;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Lcom/bumptech/glide/request/target/PreloadTarget;->obtain(II)Lcom/bumptech/glide/request/target/PreloadTarget;

    move-result-object v4

    move-object v3, v4

    .line 757
    .local v3, "target":Lcom/bumptech/glide/request/target/PreloadTarget;, "Lcom/bumptech/glide/request/target/PreloadTarget<TTranscodeType;>;"
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "priority":Lcom/bumptech/glide/Priority;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    .line 310
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "signature":Lcom/bumptech/glide/load/Key;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 595
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Signature must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    .line 598
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move v1, p1

    .local v1, "sizeMultiplier":F
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 186
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    .line 190
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move v1, p1

    .local v1, "skip":Z
    move-object v2, v0

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    .line 557
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0

    .line 555
    .restart local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<TDataType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "sourceEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TDataType;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v2, :cond_0

    .line 247
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setSourceEncoder(Lcom/bumptech/glide/load/Encoder;)V

    .line 250
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move v1, p1

    .local v1, "sizeMultiplier":F
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 168
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 172
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "thumbnailRequest":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<***TTranscodeType;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "You cannot set a request as a thumbnail for itself. Consider using clone() on the request you are passing to thumbnail()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    .line 137
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TResourceType;TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TResourceType;TTranscodeType;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v2, :cond_0

    .line 356
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setTranscoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 359
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "transformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<TResourceType;>;"
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->isTransformationSet:Z

    .line 323
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 324
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 329
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-object v0

    .line 326
    .restart local v0    # "this":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    :cond_0
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/MultiTransformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    iput-object v3, v2, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    goto :goto_0
.end method
