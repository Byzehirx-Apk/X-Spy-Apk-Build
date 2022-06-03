.class public Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;,
        Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;
    }
.end annotation


# static fields
.field private static final ANIMATED_VECTOR:Ljava/lang/String; = "animated-vector"

.field private static final DBG_ANIMATION_VECTOR_DRAWABLE:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "AnimatedVDCompat"

.field private static final TARGET:Ljava/lang/String; = "target"


# instance fields
.field private mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

.field mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field mCachedConstantStateDelegate:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

.field final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V

    .line 169
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V

    .line 173
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "state":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
    move-object v3, p3

    .local v3, "res":Landroid/content/res/Resources;
    move-object v4, v0

    invoke-direct {v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;-><init>()V

    .line 156
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 161
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 164
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 723
    move-object v4, v0

    new-instance v5, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 178
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Landroid/content/Context;

    .line 179
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 180
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    move-object v4, v0

    new-instance v5, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;-><init>(Landroid/content/Context;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    goto :goto_0
.end method

.method public static clearAnimationCallbacks(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Landroid/graphics/drawable/Animatable;

    if-nez v1, :cond_1

    .line 911
    .line 919
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 914
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 919
    :goto_1
    goto :goto_0

    .line 916
    :cond_2
    move-object v1, v0

    check-cast v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->clearAnimationCallbacks()V

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resId":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_0

    .line 213
    new-instance v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;)V

    move-object v2, v6

    .line 214
    .local v2, "drawable":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move v8, v1

    move-object v9, v0

    .line 215
    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    .line 214
    invoke-static {v7, v8, v9}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    move-object v6, v2

    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v7, v2

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 217
    move-object v6, v2

    new-instance v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v7, v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCachedConstantStateDelegate:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    .line 219
    move-object v6, v2

    move-object v0, v6

    .line 241
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "drawable":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return-object v0

    .line 221
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v2, v6

    .line 224
    .local v2, "resources":Landroid/content/res/Resources;
    move-object v6, v2

    move v7, v1

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v3, v6

    .line 225
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v6, v3

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    move-object v4, v6

    .line 227
    .local v4, "attrs":Landroid/util/AttributeSet;
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v11, v6

    move v6, v11

    move v7, v11

    move v5, v7

    .local v5, "type":I
    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    move v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    goto :goto_1

    .line 231
    :cond_1
    move v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 232
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "No start tag found"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "type":I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 237
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v6, "AnimatedVDCompat"

    const-string/jumbo v7, "parser error"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 240
    .line 241
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 234
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "type":I
    :cond_2
    move-object v6, v0

    move-object v7, v0

    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v8, v3

    move-object v9, v4

    move-object v10, v0

    .line 235
    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 234
    invoke-static {v6, v7, v8, v9, v10}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 238
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "type":I
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 239
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "AnimatedVDCompat"

    const-string/jumbo v7, "parser error"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_2
.end method

.method public static createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "r":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v4, p4

    .local v4, "theme":Landroid/content/res/Resources$Theme;
    new-instance v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;)V

    move-object v5, v6

    .line 254
    .local v5, "drawable":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 255
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static registerAnimationCallback(Landroid/graphics/drawable/Drawable;Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 4

    .prologue
    .line 867
    move-object v0, p0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .local v1, "callback":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 868
    .line 879
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroid/graphics/drawable/Animatable;

    if-nez v2, :cond_2

    .line 871
    goto :goto_0

    .line 874
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_3

    .line 875
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerPlatformCallback(Landroid/graphics/drawable/AnimatedVectorDrawable;Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 879
    :goto_1
    goto :goto_0

    .line 877
    :cond_3
    move-object v2, v0

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    goto :goto_1
.end method

.method private static registerPlatformCallback(Landroid/graphics/drawable/AnimatedVectorDrawable;Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 4
    .param p0    # Landroid/graphics/drawable/AnimatedVectorDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    move-object v1, p1

    .local v1, "callback":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 811
    return-void
.end method

.method private removeAnimatorSetListener()V
    .locals 3

    .prologue
    .line 817
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_0

    .line 818
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 819
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 821
    :cond_0
    return-void
.end method

.method private setupAnimatorsForTarget(Ljava/lang/String;Landroid/animation/Animator;)V
    .locals 8

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "animator":Landroid/animation/Animator;
    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 673
    .local v3, "target":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 674
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    .line 675
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setupColorAnimator(Landroid/animation/Animator;)V

    .line 677
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 678
    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    .line 679
    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    new-instance v5, Landroidx/collection/ArrayMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    .line 681
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 682
    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 686
    return-void
.end method

.method private setupColorAnimator(Landroid/animation/Animator;)V
    .locals 8

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v4, v1

    instance-of v4, v4, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    .line 652
    move-object v4, v1

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v4

    move-object v2, v4

    .line 653
    .local v2, "childAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 654
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 655
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-direct {v4, v5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setupColorAnimator(Landroid/animation/Animator;)V

    .line 654
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 659
    .end local v2    # "childAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v3    # "i":I
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_3

    .line 660
    move-object v4, v1

    check-cast v4, Landroid/animation/ObjectAnimator;

    move-object v2, v4

    .line 661
    .local v2, "objectAnim":Landroid/animation/ObjectAnimator;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 662
    .local v3, "propertyName":Ljava/lang/String;
    const-string/jumbo v4, "fillColor"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "strokeColor"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 663
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    if-nez v4, :cond_2

    .line 664
    move-object v4, v0

    new-instance v5, Landroid/animation/ArgbEvaluator;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 666
    :cond_2
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 669
    .end local v2    # "objectAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static unregisterAnimationCallback(Landroid/graphics/drawable/Drawable;Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 4

    .prologue
    .line 889
    move-object v0, p0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .local v1, "callback":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 890
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 899
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return v0

    .line 892
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroid/graphics/drawable/Animatable;

    if-nez v2, :cond_2

    .line 893
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 896
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_3

    .line 897
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unregisterPlatformCallback(Landroid/graphics/drawable/AnimatedVectorDrawable;Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 899
    :cond_3
    move-object v2, v0

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private static unregisterPlatformCallback(Landroid/graphics/drawable/AnimatedVectorDrawable;Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 747
    move-object v0, p0

    .local v0, "dr":Landroid/graphics/drawable/AnimatedVectorDrawable;
    move-object v1, p1

    .local v1, "callback":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    move-result v2

    move v0, v2

    .end local v0    # "dr":Landroid/graphics/drawable/AnimatedVectorDrawable;
    return v0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "t":Landroid/content/res/Resources$Theme;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 513
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 514
    .line 517
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 2

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 523
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    move v0, v1

    .line 526
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public clearAnimationCallbacks()V
    .locals 2

    .prologue
    .line 846
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 848
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 849
    .line 857
    :goto_0
    return-void

    .line 851
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->removeAnimatorSetListener()V

    .line 852
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 853
    goto :goto_0

    .line 856
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 857
    goto :goto_0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 285
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 286
    .line 292
    :goto_0
    return-void

    .line 288
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->draw(Landroid/graphics/Canvas;)V

    .line 289
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    .line 292
    :cond_1
    goto :goto_0
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 322
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    move v0, v1

    .line 324
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getAlpha()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 3

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 277
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    .line 279
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getChangingConfigurations()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    or-int/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 5

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 266
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    move-object v0, v1

    .line 271
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 411
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v0, v1

    .line 413
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getIntrinsicHeight()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 403
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    .line 405
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getMinimumHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getMinimumWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 395
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    move v0, v1

    .line 397
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getOpacity()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "x0":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getState()[I

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 508
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object/from16 v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object/from16 v2, p2

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v4, p4

    .local v4, "theme":Landroid/content/res/Resources$Theme;
    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    .line 437
    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v12 .. v16}, Landroidx/core/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 438
    .line 502
    :goto_0
    return-void

    .line 440
    :cond_0
    move-object v12, v2

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    move v5, v12

    .line 441
    .local v5, "eventType":I
    move-object v12, v2

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v6, v12

    .line 444
    .local v6, "innerDepth":I
    :goto_1
    move v12, v5

    const/4 v13, 0x1

    if-eq v12, v13, :cond_8

    move-object v12, v2

    .line 445
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move v13, v6

    if-ge v12, v13, :cond_1

    move v12, v5

    const/4 v13, 0x3

    if-eq v12, v13, :cond_8

    .line 446
    :cond_1
    move v12, v5

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 447
    move-object v12, v2

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 451
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "animated-vector"

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 452
    move-object v12, v1

    move-object v13, v4

    move-object v14, v3

    sget-object v15, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATED_VECTOR_DRAWABLE:[I

    .line 453
    invoke-static {v12, v13, v14, v15}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    move-object v8, v12

    .line 456
    .local v8, "a":Landroid/content/res/TypedArray;
    move-object v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move v9, v12

    .line 461
    .local v9, "drawableRes":I
    move v12, v9

    if-eqz v12, :cond_3

    .line 462
    move-object v12, v1

    move v13, v9

    move-object v14, v4

    invoke-static {v12, v13, v14}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v12

    move-object v10, v12

    .line 464
    .local v10, "vectorDrawable":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    move-object v12, v10

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAllowCaching(Z)V

    .line 465
    move-object v12, v10

    move-object v13, v0

    iget-object v13, v13, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v12, v13}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 466
    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz v12, :cond_2

    .line 467
    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 469
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    move-object v13, v10

    iput-object v13, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 471
    .end local v10    # "vectorDrawable":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    :cond_3
    move-object v12, v8

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    .line 498
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v9    # "drawableRes":I
    :cond_4
    :goto_2
    move-object v12, v2

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v5, v12

    goto :goto_1

    .line 472
    .restart local v7    # "tagName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v12, "target"

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 473
    move-object v12, v1

    move-object v13, v3

    sget-object v14, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATED_VECTOR_DRAWABLE_TARGET:[I

    .line 474
    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    move-object v8, v12

    .line 476
    .restart local v8    # "a":Landroid/content/res/TypedArray;
    move-object v12, v8

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 479
    .local v9, "target":Ljava/lang/String;
    move-object v12, v8

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move v10, v12

    .line 482
    .local v10, "id":I
    move v12, v10

    if-eqz v12, :cond_6

    .line 483
    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_7

    .line 486
    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Landroid/content/Context;

    move v13, v10

    invoke-static {v12, v13}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v12

    move-object v11, v12

    .line 488
    .local v11, "objectAnimator":Landroid/animation/Animator;
    move-object v12, v0

    move-object v13, v9

    move-object v14, v11

    invoke-direct {v12, v13, v14}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setupAnimatorsForTarget(Ljava/lang/String;Landroid/animation/Animator;)V

    .line 489
    .line 495
    .end local v11    # "objectAnimator":Landroid/animation/Animator;
    :cond_6
    move-object v12, v8

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 490
    :cond_7
    move-object v12, v8

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 491
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string/jumbo v14, "Context can\'t be null when inflating animators"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 501
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v9    # "target":Ljava/lang/String;
    .end local v10    # "id":I
    :cond_8
    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    invoke-virtual {v12}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->setupAnimatorSet()V

    .line 502
    goto/16 :goto_0
.end method

.method public isAutoMirrored()Z
    .locals 2

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 419
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    move v0, v1

    .line 421
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->isAutoMirrored()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 692
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v1

    move v0, v1

    .line 694
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 387
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    move v0, v1

    .line 389
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->isStateful()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 194
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 297
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 298
    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setBounds(Landroid/graphics/Rect;)V

    .line 301
    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 4

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move v1, p1

    .local v1, "level":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 314
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    move v0, v2

    .line 316
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setLevel(I)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 4

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "state":[I
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 306
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    move v0, v2

    .line 308
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setState([I)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 7
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "callback":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 755
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerPlatformCallback(Landroid/graphics/drawable/AnimatedVectorDrawable;Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 756
    .line 801
    :goto_0
    return-void

    .line 759
    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    .line 760
    goto :goto_0

    .line 764
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 765
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 768
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 770
    goto :goto_0

    .line 773
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 775
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v2, :cond_4

    .line 778
    move-object v2, v0

    new-instance v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 800
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 801
    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 330
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 331
    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAlpha(I)V

    .line 334
    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 4

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move v1, p1

    .local v1, "mirrored":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 427
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 428
    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAutoMirrored(Z)V

    .line 431
    goto :goto_0
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move v1, p1

    .local v1, "x0":I
    move-object v2, p2

    .local v2, "x1":Landroid/graphics/PorterDuff$Mode;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 339
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 340
    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 343
    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move v1, p1

    .local v1, "x0":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move v1, p1

    .local v1, "x0":F
    move v2, p2

    .local v2, "x1":F
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 10

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move v1, p1

    .local v1, "x0":I
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move v4, p4

    .local v4, "x3":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "x0":[I
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setState([I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    return v0
.end method

.method public setTint(I)V
    .locals 4

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move v1, p1

    .local v1, "tint":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 348
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 349
    .line 353
    :goto_0
    return-void

    .line 352
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTint(I)V

    .line 353
    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 358
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 359
    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 363
    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 368
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 369
    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 373
    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 6

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move v1, p1

    .local v1, "visible":Z
    move v2, p2

    .local v2, "restart":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 378
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    .line 381
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .line 380
    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setVisible(ZZ)Z

    move-result v3

    .line 381
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 701
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 702
    .line 711
    :goto_0
    return-void

    .line 705
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 706
    goto :goto_0

    .line 709
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 710
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    .line 711
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 715
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 717
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 718
    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 721
    goto :goto_0
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 5
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 826
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v1, p1

    .local v1, "callback":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 828
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unregisterPlatformCallback(Landroid/graphics/drawable/AnimatedVectorDrawable;Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result v3

    .line 831
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    move-object v3, v1

    if-nez v3, :cond_2

    .line 833
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    .line 841
    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return v0

    .line 835
    .restart local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 838
    .local v2, "removed":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 839
    move-object v3, v0

    invoke-direct {v3}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->removeAnimatorSetListener()V

    .line 841
    :cond_3
    move v3, v2

    move v0, v3

    goto :goto_0
.end method
