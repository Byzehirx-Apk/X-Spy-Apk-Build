.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$DisappearListener;,
        Landroidx/transition/Visibility$VisibilityInfo;,
        Landroidx/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "android:visibility:visibility"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "android:visibility:parent"

    aput-object v3, v1, v2

    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    .line 96
    move-object v1, v0

    const/4 v2, 0x3

    iput v2, v1, Landroidx/transition/Visibility;->mMode:I

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    move-object v5, v0

    const/4 v6, 0x3

    iput v6, v5, Landroidx/transition/Visibility;->mMode:I

    .line 103
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 105
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v5, v3

    move-object v6, v2

    check-cast v6, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v7, "transitionVisibilityMode"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    .line 108
    .local v4, "mode":I
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    move v5, v4

    if-eqz v5, :cond_0

    .line 110
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/transition/Visibility;->setMode(I)V

    .line 112
    :cond_0
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 7

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    move v2, v4

    .line 147
    .local v2, "visibility":I
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:visibility:visibility"

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 148
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:visibility:parent"

    move-object v6, v1

    iget-object v6, v6, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 149
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 150
    .local v3, "loc":[I
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 151
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:visibility:screenLocation"

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 152
    return-void
.end method

.method private getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .locals 8

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, p1

    .local v1, "startValues":Landroidx/transition/TransitionValues;
    move-object v2, p2

    .local v2, "endValues":Landroidx/transition/TransitionValues;
    new-instance v4, Landroidx/transition/Visibility$VisibilityInfo;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    move-object v3, v4

    .line 192
    .local v3, "visInfo":Landroidx/transition/Visibility$VisibilityInfo;
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 193
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 194
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:visibility:visibility"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 196
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:visibility:parent"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 201
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    move-object v4, v3

    move-object v5, v2

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:visibility:visibility"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 203
    move-object v4, v3

    move-object v5, v2

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:visibility:parent"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 208
    :goto_1
    move-object v4, v1

    if-eqz v4, :cond_7

    move-object v4, v2

    if-eqz v4, :cond_7

    .line 209
    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    move-object v5, v3

    iget v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne v4, v5, :cond_2

    move-object v4, v3

    iget-object v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    move-object v5, v3

    iget-object v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne v4, v5, :cond_2

    .line 211
    move-object v4, v3

    move-object v0, v4

    .line 239
    .end local v0    # "this":Landroidx/transition/Visibility;
    :goto_2
    return-object v0

    .line 198
    .restart local v0    # "this":Landroidx/transition/Visibility;
    :cond_0
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 199
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 205
    :cond_1
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 206
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 213
    :cond_2
    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    move-object v5, v3

    iget v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq v4, v5, :cond_5

    .line 214
    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v4, :cond_4

    .line 215
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 216
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 239
    :cond_3
    :goto_3
    move-object v4, v3

    move-object v0, v4

    goto :goto_2

    .line 217
    :cond_4
    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v4, :cond_3

    .line 218
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 219
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 223
    :cond_5
    move-object v4, v3

    iget-object v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez v4, :cond_6

    .line 224
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 225
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 226
    :cond_6
    move-object v4, v3

    iget-object v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v4, :cond_3

    .line 227
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 228
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 232
    :cond_7
    move-object v4, v1

    if-nez v4, :cond_8

    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v4, :cond_8

    .line 233
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 234
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 235
    :cond_8
    move-object v4, v2

    if-nez v4, :cond_3

    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v4, :cond_3

    .line 236
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 237
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 162
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 157
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "startValues":Landroidx/transition/TransitionValues;
    move-object v3, p3

    .local v3, "endValues":Landroidx/transition/TransitionValues;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v5

    move-object v4, v5

    .line 247
    .local v4, "visInfo":Landroidx/transition/Visibility$VisibilityInfo;
    move-object v5, v4

    iget-boolean v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v5, :cond_2

    move-object v5, v4

    iget-object v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    move-object v5, v4

    iget-object v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 249
    :cond_0
    move-object v5, v4

    iget-boolean v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v5, :cond_1

    .line 250
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    iget v8, v8, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    move-object v9, v3

    move-object v10, v4

    iget v10, v10, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    invoke-virtual/range {v5 .. v10}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v5

    move-object v0, v5

    .line 258
    .end local v0    # "this":Landroidx/transition/Visibility;
    :goto_0
    return-object v0

    .line 253
    .restart local v0    # "this":Landroidx/transition/Visibility;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    iget v8, v8, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    move-object v9, v3

    move-object v10, v4

    iget v10, v10, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    invoke-virtual/range {v5 .. v10}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 258
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, v0

    iget v1, v1, Landroidx/transition/Visibility;->mMode:I

    move v0, v1

    .end local v0    # "this":Landroidx/transition/Visibility;
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    sget-object v1, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Visibility;
    return-object v0
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 7

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, p1

    .local v1, "startValues":Landroidx/transition/TransitionValues;
    move-object v2, p2

    .local v2, "newValues":Landroidx/transition/TransitionValues;
    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_0

    .line 463
    const/4 v4, 0x0

    move v0, v4

    .line 473
    .end local v0    # "this":Landroidx/transition/Visibility;
    :goto_0
    return v0

    .line 465
    .restart local v0    # "this":Landroidx/transition/Visibility;
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:visibility:visibility"

    .line 466
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:visibility:visibility"

    .line 467
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 470
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 472
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v4

    move-object v3, v4

    .line 473
    .local v3, "changeInfo":Landroidx/transition/Visibility$VisibilityInfo;
    move-object v4, v3

    iget-boolean v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v4, :cond_3

    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz v4, :cond_2

    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isVisible(Landroidx/transition/TransitionValues;)Z
    .locals 6

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, p1

    .local v1, "values":Landroidx/transition/TransitionValues;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 181
    const/4 v4, 0x0

    move v0, v4

    .line 186
    .end local v0    # "this":Landroidx/transition/Visibility;
    :goto_0
    return v0

    .line 183
    .restart local v0    # "this":Landroidx/transition/Visibility;
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v2, v4

    .line 184
    .local v2, "visibility":I
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:visibility:parent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 186
    .local v3, "parent":Landroid/view/View;
    move v4, v2

    if-nez v4, :cond_1

    move-object v4, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, p3

    .local v3, "startValues":Landroidx/transition/TransitionValues;
    move-object v4, p4

    .local v4, "endValues":Landroidx/transition/TransitionValues;
    const/4 v5, 0x0

    move-object v0, v5

    .end local v0    # "this":Landroidx/transition/Visibility;
    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 15

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object/from16 v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v2, p2

    .local v2, "startValues":Landroidx/transition/TransitionValues;
    move/from16 v3, p3

    .local v3, "startVisibility":I
    move-object/from16 v4, p4

    .local v4, "endValues":Landroidx/transition/TransitionValues;
    move/from16 v5, p5

    .local v5, "endVisibility":I
    move-object v10, v0

    iget v10, v10, Landroidx/transition/Visibility;->mMode:I

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    move-object v10, v4

    if-nez v10, :cond_1

    .line 280
    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    .line 293
    .end local v0    # "this":Landroidx/transition/Visibility;
    :goto_0
    return-object v0

    .line 282
    .restart local v0    # "this":Landroidx/transition/Visibility;
    :cond_1
    move-object v10, v2

    if-nez v10, :cond_2

    .line 283
    move-object v10, v4

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    move-object v6, v10

    .line 284
    .local v6, "endParent":Landroid/view/View;
    move-object v10, v0

    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v10

    move-object v7, v10

    .line 286
    .local v7, "startParentValues":Landroidx/transition/TransitionValues;
    move-object v10, v0

    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v10

    move-object v8, v10

    .line 287
    .local v8, "endParentValues":Landroidx/transition/TransitionValues;
    move-object v10, v0

    move-object v11, v7

    move-object v12, v8

    .line 288
    invoke-direct {v10, v11, v12}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v10

    move-object v9, v10

    .line 289
    .local v9, "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    move-object v10, v9

    iget-boolean v10, v10, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v10, :cond_2

    .line 290
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 293
    .end local v6    # "endParent":Landroid/view/View;
    .end local v7    # "startParentValues":Landroidx/transition/TransitionValues;
    .end local v8    # "endParentValues":Landroidx/transition/TransitionValues;
    .end local v9    # "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    :cond_2
    move-object v10, v0

    move-object v11, v1

    move-object v12, v4

    iget-object v12, v12, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v13, v2

    move-object v14, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v10

    move-object v0, v10

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, p3

    .local v3, "startValues":Landroidx/transition/TransitionValues;
    move-object v4, p4

    .local v4, "endValues":Landroidx/transition/TransitionValues;
    const/4 v5, 0x0

    move-object v0, v5

    .end local v0    # "this":Landroidx/transition/Visibility;
    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 27

    .prologue
    .line 336
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/transition/Visibility;
    move-object/from16 v3, p1

    .local v3, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v4, p2

    .local v4, "startValues":Landroidx/transition/TransitionValues;
    move/from16 v5, p3

    .local v5, "startVisibility":I
    move-object/from16 v6, p4

    .local v6, "endValues":Landroidx/transition/TransitionValues;
    move/from16 v7, p5

    .local v7, "endVisibility":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/transition/Visibility;->mMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    and-int/lit8 v20, v20, 0x2

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 337
    const/16 v20, 0x0

    move-object/from16 v2, v20

    .line 436
    .end local v2    # "this":Landroidx/transition/Visibility;
    :goto_0
    return-object v2

    .line 340
    .restart local v2    # "this":Landroidx/transition/Visibility;
    :cond_0
    move-object/from16 v20, v4

    if-eqz v20, :cond_3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v20, v0

    :goto_1
    move-object/from16 v8, v20

    .line 341
    .local v8, "startView":Landroid/view/View;
    move-object/from16 v20, v6

    if-eqz v20, :cond_4

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v20, v0

    :goto_2
    move-object/from16 v9, v20

    .line 342
    .local v9, "endView":Landroid/view/View;
    const/16 v20, 0x0

    move-object/from16 v10, v20

    .line 343
    .local v10, "overlayView":Landroid/view/View;
    const/16 v20, 0x0

    move-object/from16 v11, v20

    .line 344
    .local v11, "viewToKeep":Landroid/view/View;
    move-object/from16 v20, v9

    if-eqz v20, :cond_1

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_9

    .line 345
    :cond_1
    move-object/from16 v20, v9

    if-eqz v20, :cond_5

    .line 347
    move-object/from16 v20, v9

    move-object/from16 v10, v20

    .line 393
    :cond_2
    :goto_3
    move/from16 v20, v7

    move/from16 v12, v20

    .line 395
    .local v12, "finalVisibility":I
    move-object/from16 v20, v10

    if-eqz v20, :cond_e

    move-object/from16 v20, v4

    if-eqz v20, :cond_e

    .line 397
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v20, v0

    const-string/jumbo v21, "android:visibility:screenLocation"

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [I

    check-cast v20, [I

    move-object/from16 v13, v20

    .line 398
    .local v13, "screenLoc":[I
    move-object/from16 v20, v13

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v14, v20

    .line 399
    .local v14, "screenX":I
    move-object/from16 v20, v13

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v15, v20

    .line 400
    .local v15, "screenY":I
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v16, v20

    .line 401
    .local v16, "loc":[I
    move-object/from16 v20, v3

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 402
    move-object/from16 v20, v10

    move/from16 v21, v14

    move-object/from16 v22, v16

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-int v21, v21, v22

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 403
    move-object/from16 v20, v10

    move/from16 v21, v15

    move-object/from16 v22, v16

    const/16 v23, 0x1

    aget v22, v22, v23

    sub-int v21, v21, v22

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 404
    move-object/from16 v20, v3

    invoke-static/range {v20 .. v20}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v20

    move-object/from16 v17, v20

    .line 405
    .local v17, "overlay":Landroidx/transition/ViewGroupOverlayImpl;
    move-object/from16 v20, v17

    move-object/from16 v21, v10

    invoke-interface/range {v20 .. v21}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 406
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v10

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    invoke-virtual/range {v20 .. v24}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v20

    move-object/from16 v18, v20

    .line 407
    .local v18, "animator":Landroid/animation/Animator;
    move-object/from16 v20, v18

    if-nez v20, :cond_d

    .line 408
    move-object/from16 v20, v17

    move-object/from16 v21, v10

    invoke-interface/range {v20 .. v21}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    .line 418
    :goto_4
    move-object/from16 v20, v18

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 340
    .end local v8    # "startView":Landroid/view/View;
    .end local v9    # "endView":Landroid/view/View;
    .end local v10    # "overlayView":Landroid/view/View;
    .end local v11    # "viewToKeep":Landroid/view/View;
    .end local v12    # "finalVisibility":I
    .end local v13    # "screenLoc":[I
    .end local v14    # "screenX":I
    .end local v15    # "screenY":I
    .end local v16    # "loc":[I
    .end local v17    # "overlay":Landroidx/transition/ViewGroupOverlayImpl;
    .end local v18    # "animator":Landroid/animation/Animator;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 341
    .restart local v8    # "startView":Landroid/view/View;
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 348
    .restart local v9    # "endView":Landroid/view/View;
    .restart local v10    # "overlayView":Landroid/view/View;
    .restart local v11    # "viewToKeep":Landroid/view/View;
    :cond_5
    move-object/from16 v20, v8

    if-eqz v20, :cond_2

    .line 352
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_6

    .line 354
    move-object/from16 v20, v8

    move-object/from16 v10, v20

    goto/16 :goto_3

    .line 355
    :cond_6
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/view/View;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 356
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    move-object/from16 v12, v20

    .line 357
    .local v12, "startParent":Landroid/view/View;
    move-object/from16 v20, v2

    move-object/from16 v21, v12

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v20

    move-object/from16 v13, v20

    .line 358
    .local v13, "startParentValues":Landroidx/transition/TransitionValues;
    move-object/from16 v20, v2

    move-object/from16 v21, v12

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v20

    move-object/from16 v14, v20

    .line 360
    .local v14, "endParentValues":Landroidx/transition/TransitionValues;
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    .line 361
    invoke-direct/range {v20 .. v22}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v20

    move-object/from16 v15, v20

    .line 362
    .local v15, "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 363
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v12

    invoke-static/range {v20 .. v22}, Landroidx/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v10, v20

    .line 375
    :cond_7
    :goto_5
    goto/16 :goto_3

    .line 365
    :cond_8
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_7

    .line 366
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getId()I

    move-result v20

    move/from16 v16, v20

    .line 367
    .local v16, "id":I
    move/from16 v20, v16

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    move-object/from16 v20, v3

    move/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/transition/Visibility;->mCanRemoveViews:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 372
    move-object/from16 v20, v8

    move-object/from16 v10, v20

    goto :goto_5

    .line 379
    .end local v12    # "startParent":Landroid/view/View;
    .end local v13    # "startParentValues":Landroidx/transition/TransitionValues;
    .end local v14    # "endParentValues":Landroidx/transition/TransitionValues;
    .end local v15    # "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    .end local v16    # "id":I
    :cond_9
    move/from16 v20, v7

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 380
    move-object/from16 v20, v9

    move-object/from16 v11, v20

    goto/16 :goto_3

    .line 383
    :cond_a
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 384
    move-object/from16 v20, v9

    move-object/from16 v11, v20

    goto/16 :goto_3

    .line 385
    :cond_b
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/transition/Visibility;->mCanRemoveViews:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 386
    move-object/from16 v20, v8

    move-object/from16 v10, v20

    goto/16 :goto_3

    .line 388
    :cond_c
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v8

    .line 389
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    .line 388
    invoke-static/range {v20 .. v22}, Landroidx/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v10, v20

    goto/16 :goto_3

    .line 410
    .local v12, "finalVisibility":I
    .local v13, "screenLoc":[I
    .local v14, "screenX":I
    .local v15, "screenY":I
    .local v16, "loc":[I
    .restart local v17    # "overlay":Landroidx/transition/ViewGroupOverlayImpl;
    .restart local v18    # "animator":Landroid/animation/Animator;
    :cond_d
    move-object/from16 v20, v10

    move-object/from16 v19, v20

    .line 411
    .local v19, "finalOverlayView":Landroid/view/View;
    move-object/from16 v20, v18

    new-instance v21, Landroidx/transition/Visibility$1;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v2

    move-object/from16 v24, v17

    move-object/from16 v25, v19

    invoke-direct/range {v22 .. v25}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroidx/transition/ViewGroupOverlayImpl;Landroid/view/View;)V

    invoke-virtual/range {v20 .. v21}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_4

    .line 421
    .end local v13    # "screenLoc":[I
    .end local v14    # "screenX":I
    .end local v15    # "screenY":I
    .end local v16    # "loc":[I
    .end local v17    # "overlay":Landroidx/transition/ViewGroupOverlayImpl;
    .end local v18    # "animator":Landroid/animation/Animator;
    .end local v19    # "finalOverlayView":Landroid/view/View;
    :cond_e
    move-object/from16 v20, v11

    if-eqz v20, :cond_10

    .line 422
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    move/from16 v13, v20

    .line 423
    .local v13, "originalVisibility":I
    move-object/from16 v20, v11

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 424
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v11

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    invoke-virtual/range {v20 .. v24}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v20

    move-object/from16 v14, v20

    .line 425
    .local v14, "animator":Landroid/animation/Animator;
    move-object/from16 v20, v14

    if-eqz v20, :cond_f

    .line 426
    new-instance v20, Landroidx/transition/Visibility$DisappearListener;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v11

    move/from16 v23, v12

    const/16 v24, 0x1

    invoke-direct/range {v21 .. v24}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    move-object/from16 v15, v20

    .line 428
    .local v15, "disappearListener":Landroidx/transition/Visibility$DisappearListener;
    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-virtual/range {v20 .. v21}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 429
    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-static/range {v20 .. v21}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 430
    move-object/from16 v20, v2

    move-object/from16 v21, v15

    invoke-virtual/range {v20 .. v21}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v20

    .line 431
    .line 434
    .end local v15    # "disappearListener":Landroidx/transition/Visibility$DisappearListener;
    :goto_6
    move-object/from16 v20, v14

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 432
    :cond_f
    move-object/from16 v20, v11

    move/from16 v21, v13

    invoke-static/range {v20 .. v21}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    goto :goto_6

    .line 436
    .end local v13    # "originalVisibility":I
    .end local v14    # "animator":Landroid/animation/Animator;
    :cond_10
    const/16 v20, 0x0

    move-object/from16 v2, v20

    goto/16 :goto_0
.end method

.method public setMode(I)V
    .locals 6

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility;
    move v1, p1

    .local v1, "mode":I
    move v2, v1

    const/4 v3, -0x4

    and-int/lit8 v2, v2, -0x4

    if-eqz v2, :cond_0

    .line 123
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/transition/Visibility;->mMode:I

    .line 126
    return-void
.end method
