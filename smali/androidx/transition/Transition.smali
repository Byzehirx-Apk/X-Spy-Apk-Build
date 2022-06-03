.class public abstract Landroidx/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Transition$EpicenterCallback;,
        Landroidx/transition/Transition$ArrayListManager;,
        Landroidx/transition/Transition$AnimationInfo;,
        Landroidx/transition/Transition$TransitionListener;,
        Landroidx/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroidx/transition/TransitionValuesMaps;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Landroidx/transition/TransitionSet;

.field private mPathMotion:Landroidx/transition/PathMotion;

.field private mPaused:Z

.field mPropagation:Landroidx/transition/TransitionPropagation;

.field private mSceneRoot:Landroid/view/ViewGroup;

.field private mStartDelay:J

.field private mStartValues:Landroidx/transition/TransitionValuesMaps;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 170
    new-instance v0, Landroidx/transition/Transition$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/transition/Transition$1;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    .line 204
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    .line 163
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 180
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    .line 182
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/transition/Transition;->mStartDelay:J

    .line 183
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/transition/Transition;->mDuration:J

    .line 184
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 185
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 186
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 187
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 188
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 189
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 190
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 191
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 192
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 193
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 194
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 195
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 196
    move-object v1, v0

    new-instance v2, Landroidx/transition/TransitionValuesMaps;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 197
    move-object v1, v0

    new-instance v2, Landroidx/transition/TransitionValuesMaps;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 198
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 199
    move-object v1, v0

    sget-object v2, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v2, v1, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 208
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 216
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 220
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 225
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/transition/Transition;->mNumInstances:I

    .line 228
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/transition/Transition;->mPaused:Z

    .line 232
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/transition/Transition;->mEnded:Z

    .line 235
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 239
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 254
    move-object v1, v0

    sget-object v2, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v2, v1, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18

    .prologue
    .line 274
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/transition/Transition;
    move-object/from16 v2, p1

    .local v2, "context":Landroid/content/Context;
    move-object/from16 v3, p2

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object v12, v1

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 180
    move-object v12, v1

    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    .line 182
    move-object v12, v1

    const-wide/16 v13, -0x1

    iput-wide v13, v12, Landroidx/transition/Transition;->mStartDelay:J

    .line 183
    move-object v12, v1

    const-wide/16 v13, -0x1

    iput-wide v13, v12, Landroidx/transition/Transition;->mDuration:J

    .line 184
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 185
    move-object v12, v1

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 186
    move-object v12, v1

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 187
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 188
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 189
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 190
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 191
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 192
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 193
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 194
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 195
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 196
    move-object v12, v1

    new-instance v13, Landroidx/transition/TransitionValuesMaps;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v13, v12, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 197
    move-object v12, v1

    new-instance v13, Landroidx/transition/TransitionValuesMaps;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v13, v12, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 198
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 199
    move-object v12, v1

    sget-object v13, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v13, v12, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 208
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 216
    move-object v12, v1

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 220
    move-object v12, v1

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 225
    move-object v12, v1

    const/4 v13, 0x0

    iput v13, v12, Landroidx/transition/Transition;->mNumInstances:I

    .line 228
    move-object v12, v1

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/transition/Transition;->mPaused:Z

    .line 232
    move-object v12, v1

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/transition/Transition;->mEnded:Z

    .line 235
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 239
    move-object v12, v1

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 254
    move-object v12, v1

    sget-object v13, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v13, v12, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 275
    move-object v12, v2

    move-object v13, v3

    sget-object v14, Landroidx/transition/Styleable;->TRANSITION:[I

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    move-object v4, v12

    .line 276
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v12, v3

    check-cast v12, Landroid/content/res/XmlResourceParser;

    move-object v5, v12

    .line 277
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    move-object v12, v4

    move-object v13, v5

    const-string/jumbo v14, "duration"

    const/4 v15, 0x1

    const/16 v16, -0x1

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    int-to-long v12, v12

    move-wide v6, v12

    .line 279
    .local v6, "duration":J
    move-wide v12, v6

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_0

    .line 280
    move-object v12, v1

    move-wide v13, v6

    invoke-virtual {v12, v13, v14}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    move-result-object v12

    .line 282
    :cond_0
    move-object v12, v4

    move-object v13, v5

    const-string/jumbo v14, "startDelay"

    const/4 v15, 0x2

    const/16 v16, -0x1

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    int-to-long v12, v12

    move-wide v8, v12

    .line 284
    .local v8, "startDelay":J
    move-wide v12, v8

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    .line 285
    move-object v12, v1

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    move-result-object v12

    .line 287
    :cond_1
    move-object v12, v4

    move-object v13, v5

    const-string/jumbo v14, "interpolator"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    move v10, v12

    .line 289
    .local v10, "resId":I
    move v12, v10

    if-lez v12, :cond_2

    .line 290
    move-object v12, v1

    move-object v13, v2

    move v14, v10

    invoke-static {v13, v14}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    move-result-object v12

    .line 292
    :cond_2
    move-object v12, v4

    move-object v13, v5

    const-string/jumbo v14, "matchOrder"

    const/4 v15, 0x3

    invoke-static {v12, v13, v14, v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 294
    .local v11, "matchOrder":Ljava/lang/String;
    move-object v12, v11

    if-eqz v12, :cond_3

    .line 295
    move-object v12, v1

    move-object v13, v11

    invoke-static {v13}, Landroidx/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/transition/Transition;->setMatchOrder([I)V

    .line 297
    :cond_3
    move-object v12, v4

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    return-void
.end method

.method private addUnmatched(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    move-object v2, p2

    .local v2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 645
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    move-object v4, v5

    .line 646
    .local v4, "start":Landroidx/transition/TransitionValues;
    move-object v5, v0

    move-object v6, v4

    iget-object v6, v6, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 647
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 648
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 644
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 653
    .end local v4    # "start":Landroidx/transition/TransitionValues;
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 654
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    move-object v4, v5

    .line 655
    .local v4, "end":Landroidx/transition/TransitionValues;
    move-object v5, v0

    move-object v6, v4

    iget-object v6, v6, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 656
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 657
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 653
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 660
    .end local v4    # "end":Landroidx/transition/TransitionValues;
    :cond_3
    return-void
.end method

.method private static addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V
    .locals 15

    .prologue
    .line 1531
    move-object v1, p0

    .local v1, "transitionValuesMaps":Landroidx/transition/TransitionValuesMaps;
    move-object/from16 v2, p1

    .local v2, "view":Landroid/view/View;
    move-object/from16 v3, p2

    .local v3, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    move-object v12, v2

    move-object v13, v3

    invoke-virtual {v11, v12, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1532
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    move v4, v11

    .line 1533
    .local v4, "id":I
    move v11, v4

    if-ltz v11, :cond_0

    .line 1534
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    move v12, v4

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-ltz v11, :cond_3

    .line 1536
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    move v12, v4

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1541
    :cond_0
    :goto_0
    move-object v11, v2

    invoke-static {v11}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 1542
    .local v5, "name":Ljava/lang/String;
    move-object v11, v5

    if-eqz v11, :cond_1

    .line 1543
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1545
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1550
    :cond_1
    :goto_1
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    instance-of v11, v11, Landroid/widget/ListView;

    if-eqz v11, :cond_2

    .line 1551
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    move-object v6, v11

    .line 1552
    .local v6, "listview":Landroid/widget/ListView;
    move-object v11, v6

    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1553
    move-object v11, v6

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v11

    move v7, v11

    .line 1554
    .local v7, "position":I
    move-object v11, v6

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v11

    move-wide v8, v11

    .line 1555
    .local v8, "itemId":J
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    move-wide v12, v8

    invoke-virtual {v11, v12, v13}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v11

    if-ltz v11, :cond_5

    .line 1557
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    move-wide v12, v8

    invoke-virtual {v11, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object v10, v11

    .line 1558
    .local v10, "alreadyMatched":Landroid/view/View;
    move-object v11, v10

    if-eqz v11, :cond_2

    .line 1559
    move-object v11, v10

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1560
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    move-wide v12, v8

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1562
    .line 1568
    .end local v6    # "listview":Landroid/widget/ListView;
    .end local v7    # "position":I
    .end local v8    # "itemId":J
    .end local v10    # "alreadyMatched":Landroid/view/View;
    :cond_2
    :goto_2
    return-void

    .line 1538
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    move v12, v4

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1547
    .restart local v5    # "name":Ljava/lang/String;
    :cond_4
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    move-object v12, v5

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_1

    .line 1563
    .restart local v6    # "listview":Landroid/widget/ListView;
    .restart local v7    # "position":I
    .restart local v8    # "itemId":J
    :cond_5
    move-object v11, v2

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1564
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    move-wide v12, v8

    move-object v14, v2

    invoke-virtual {v11, v12, v13, v14}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2
.end method

.method private static alreadyContains([II)Z
    .locals 6

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "array":[I
    move v1, p1

    .local v1, "searchIndex":I
    move-object v4, v0

    move v5, v1

    aget v4, v4, v5

    move v2, v4

    .line 529
    .local v2, "value":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 530
    move-object v4, v0

    move v5, v3

    aget v4, v4, v5

    move v5, v2

    if-ne v4, v5, :cond_0

    .line 531
    const/4 v4, 0x1

    move v0, v4

    .line 534
    .end local v0    # "array":[I
    :goto_1
    return v0

    .line 529
    .restart local v0    # "array":[I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 10

    .prologue
    .line 1598
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "start":Z
    move-object v6, v1

    if-nez v6, :cond_0

    .line 1599
    .line 1653
    :goto_0
    return-void

    .line 1601
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    move v3, v6

    .line 1602
    .local v3, "id":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    move v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1603
    goto :goto_0

    .line 1605
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1606
    goto :goto_0

    .line 1608
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 1609
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 1610
    .local v4, "numTypes":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_4

    .line 1611
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1612
    goto :goto_0

    .line 1610
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1616
    .end local v4    # "numTypes":I
    .end local v5    # "i":I
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    .line 1617
    new-instance v6, Landroidx/transition/TransitionValues;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroidx/transition/TransitionValues;-><init>()V

    move-object v4, v6

    .line 1618
    .local v4, "values":Landroidx/transition/TransitionValues;
    move-object v6, v4

    move-object v7, v1

    iput-object v7, v6, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 1619
    move v6, v2

    if-eqz v6, :cond_6

    .line 1620
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 1624
    :goto_2
    move-object v6, v4

    iget-object v6, v6, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1625
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1626
    move v6, v2

    if-eqz v6, :cond_7

    .line 1627
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    move-object v7, v1

    move-object v8, v4

    invoke-static {v6, v7, v8}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1632
    .end local v4    # "values":Landroidx/transition/TransitionValues;
    :cond_5
    :goto_3
    move-object v6, v1

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_c

    .line 1634
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    move v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1635
    goto/16 :goto_0

    .line 1622
    .restart local v4    # "values":Landroidx/transition/TransitionValues;
    :cond_6
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    goto :goto_2

    .line 1629
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    move-object v7, v1

    move-object v8, v4

    invoke-static {v6, v7, v8}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_3

    .line 1637
    .end local v4    # "values":Landroidx/transition/TransitionValues;
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v6, :cond_9

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1638
    goto/16 :goto_0

    .line 1640
    :cond_9
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    .line 1641
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 1642
    .local v4, "numTypes":I
    const/4 v6, 0x0

    move v5, v6

    .restart local v5    # "i":I
    :goto_4
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_b

    .line 1643
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1644
    goto/16 :goto_0

    .line 1642
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1648
    .end local v4    # "numTypes":I
    .end local v5    # "i":I
    :cond_b
    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    move-object v4, v6

    .line 1649
    .local v4, "parent":Landroid/view/ViewGroup;
    const/4 v6, 0x0

    move v5, v6

    .restart local v5    # "i":I
    :goto_5
    move v6, v5

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 1650
    move-object v6, v0

    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1649
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1653
    .end local v4    # "parent":Landroid/view/ViewGroup;
    .end local v5    # "i":I
    :cond_c
    goto/16 :goto_0
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1308
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v2, p2

    .local v2, "targetId":I
    move v3, p3

    .local v3, "exclude":Z
    move v4, v2

    if-lez v4, :cond_0

    .line 1309
    move v4, v3

    if-eqz v4, :cond_1

    .line 1310
    move-object v4, v1

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v1, v4

    .line 1315
    :cond_0
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0

    .line 1312
    .restart local v0    # "this":Landroidx/transition/Transition;
    :cond_1
    move-object v4, v1

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;Z)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1159
    move-object v0, p0

    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object v1, p1

    .local v1, "target":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "exclude":Z
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 1160
    move v3, v2

    if-eqz v3, :cond_1

    .line 1161
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v0, v3

    .line 1166
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    return-object v0

    .line 1163
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1391
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    move-object v2, p2

    .local v2, "type":Ljava/lang/Class;
    move v3, p3

    .local v3, "exclude":Z
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 1392
    move v4, v3

    if-eqz v4, :cond_1

    .line 1393
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v1, v4

    .line 1398
    :cond_0
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0

    .line 1395
    .restart local v0    # "this":Landroidx/transition/Transition;
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1323
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "exclude":Z
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 1324
    move v4, v3

    if-eqz v4, :cond_1

    .line 1325
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v1, v4

    .line 1330
    :cond_0
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0

    .line 1327
    .restart local v0    # "this":Landroidx/transition/Transition;
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method private static getRunningAnimators()Landroidx/collection/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    sget-object v1, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/ArrayMap;

    move-object v0, v1

    .line 858
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 859
    new-instance v1, Landroidx/collection/ArrayMap;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v0, v1

    .line 860
    sget-object v1, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 862
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .locals 3

    .prologue
    .line 524
    move v0, p0

    .local v0, "match":I
    move v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "match":I
    return v0

    .restart local v0    # "match":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 1862
    move-object v0, p0

    .local v0, "oldValues":Landroidx/transition/TransitionValues;
    move-object v1, p1

    .local v1, "newValues":Landroidx/transition/TransitionValues;
    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 1863
    .local v3, "oldValue":Ljava/lang/Object;
    move-object v6, v1

    iget-object v6, v6, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 1865
    .local v4, "newValue":Ljava/lang/Object;
    move-object v6, v3

    if-nez v6, :cond_0

    move-object v6, v4

    if-nez v6, :cond_0

    .line 1867
    const/4 v6, 0x0

    move v5, v6

    .line 1880
    .local v5, "changed":Z
    :goto_0
    move v6, v5

    move v0, v6

    .end local v0    # "oldValues":Landroidx/transition/TransitionValues;
    return v0

    .line 1868
    .end local v5    # "changed":Z
    .restart local v0    # "oldValues":Landroidx/transition/TransitionValues;
    :cond_0
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v4

    if-nez v6, :cond_2

    .line 1870
    :cond_1
    const/4 v6, 0x1

    move v5, v6

    .restart local v5    # "changed":Z
    goto :goto_0

    .line 1873
    .end local v5    # "changed":Z
    :cond_2
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .restart local v5    # "changed":Z
    goto :goto_0

    .end local v5    # "changed":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private matchIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    move-object/from16 v2, p2

    .local v2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    move-object/from16 v3, p3

    .local v3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    move-object/from16 v4, p4

    .local v4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    move-object v11, v3

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    move v5, v11

    .line 592
    .local v5, "numStartIds":I
    const/4 v11, 0x0

    move v6, v11

    .local v6, "i":I
    :goto_0
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_1

    .line 593
    move-object v11, v3

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object v7, v11

    .line 594
    .local v7, "startView":Landroid/view/View;
    move-object v11, v7

    if-eqz v11, :cond_0

    move-object v11, v0

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 595
    move-object v11, v4

    move-object v12, v3

    move v13, v6

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object v8, v11

    .line 596
    .local v8, "endView":Landroid/view/View;
    move-object v11, v8

    if-eqz v11, :cond_0

    move-object v11, v0

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 597
    move-object v11, v1

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/transition/TransitionValues;

    move-object v9, v11

    .line 598
    .local v9, "startValues":Landroidx/transition/TransitionValues;
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/transition/TransitionValues;

    move-object v10, v11

    .line 599
    .local v10, "endValues":Landroidx/transition/TransitionValues;
    move-object v11, v9

    if-eqz v11, :cond_0

    move-object v11, v10

    if-eqz v11, :cond_0

    .line 600
    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 601
    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 602
    move-object v11, v1

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 603
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 592
    .end local v8    # "endView":Landroid/view/View;
    .end local v9    # "startValues":Landroidx/transition/TransitionValues;
    .end local v10    # "endValues":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 608
    .end local v7    # "startView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchInstances(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    move-object v2, p2

    .local v2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/collection/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    if-ltz v7, :cond_1

    .line 544
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 545
    .local v4, "view":Landroid/view/View;
    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 546
    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/transition/TransitionValues;

    move-object v5, v7

    .line 547
    .local v5, "end":Landroidx/transition/TransitionValues;
    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v5

    iget-object v7, v7, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v7, :cond_0

    move-object v7, v0

    move-object v8, v5

    iget-object v8, v8, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 548
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/transition/TransitionValues;

    move-object v6, v7

    .line 549
    .local v6, "start":Landroidx/transition/TransitionValues;
    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 550
    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 543
    .end local v5    # "end":Landroidx/transition/TransitionValues;
    .end local v6    # "start":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 554
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchItemIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    move-object/from16 v2, p2

    .local v2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    move-object/from16 v3, p3

    .local v3, "startItemIds":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Landroid/view/View;>;"
    move-object/from16 v4, p4

    .local v4, "endItemIds":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Landroid/view/View;>;"
    move-object v11, v3

    invoke-virtual {v11}, Landroidx/collection/LongSparseArray;->size()I

    move-result v11

    move v5, v11

    .line 565
    .local v5, "numStartIds":I
    const/4 v11, 0x0

    move v6, v11

    .local v6, "i":I
    :goto_0
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_1

    .line 566
    move-object v11, v3

    move v12, v6

    invoke-virtual {v11, v12}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object v7, v11

    .line 567
    .local v7, "startView":Landroid/view/View;
    move-object v11, v7

    if-eqz v11, :cond_0

    move-object v11, v0

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 568
    move-object v11, v4

    move-object v12, v3

    move v13, v6

    invoke-virtual {v12, v13}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object v8, v11

    .line 569
    .local v8, "endView":Landroid/view/View;
    move-object v11, v8

    if-eqz v11, :cond_0

    move-object v11, v0

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 570
    move-object v11, v1

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/transition/TransitionValues;

    move-object v9, v11

    .line 571
    .local v9, "startValues":Landroidx/transition/TransitionValues;
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/transition/TransitionValues;

    move-object v10, v11

    .line 572
    .local v10, "endValues":Landroidx/transition/TransitionValues;
    move-object v11, v9

    if-eqz v11, :cond_0

    move-object v11, v10

    if-eqz v11, :cond_0

    .line 573
    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 574
    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 575
    move-object v11, v1

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 576
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 565
    .end local v8    # "endView":Landroid/view/View;
    .end local v9    # "startValues":Landroidx/transition/TransitionValues;
    .end local v10    # "endValues":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 581
    .end local v7    # "startView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchNames(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    move-object/from16 v2, p2

    .local v2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    move-object/from16 v3, p3

    .local v3, "startNames":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v4, p4

    .local v4, "endNames":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object v11, v3

    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->size()I

    move-result v11

    move v5, v11

    .line 619
    .local v5, "numStartNames":I
    const/4 v11, 0x0

    move v6, v11

    .local v6, "i":I
    :goto_0
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_1

    .line 620
    move-object v11, v3

    move v12, v6

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object v7, v11

    .line 621
    .local v7, "startView":Landroid/view/View;
    move-object v11, v7

    if-eqz v11, :cond_0

    move-object v11, v0

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 622
    move-object v11, v4

    move-object v12, v3

    move v13, v6

    invoke-virtual {v12, v13}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object v8, v11

    .line 623
    .local v8, "endView":Landroid/view/View;
    move-object v11, v8

    if-eqz v11, :cond_0

    move-object v11, v0

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 624
    move-object v11, v1

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/transition/TransitionValues;

    move-object v9, v11

    .line 625
    .local v9, "startValues":Landroidx/transition/TransitionValues;
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/transition/TransitionValues;

    move-object v10, v11

    .line 626
    .local v10, "endValues":Landroidx/transition/TransitionValues;
    move-object v11, v9

    if-eqz v11, :cond_0

    move-object v11, v10

    if-eqz v11, :cond_0

    .line 627
    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 628
    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 629
    move-object v11, v1

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 630
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 619
    .end local v8    # "endView":Landroid/view/View;
    .end local v9    # "startValues":Landroidx/transition/TransitionValues;
    .end local v10    # "endValues":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 635
    .end local v7    # "startView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchStartAndEnd(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V
    .locals 12

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "startValues":Landroidx/transition/TransitionValuesMaps;
    move-object v2, p2

    .local v2, "endValues":Landroidx/transition/TransitionValuesMaps;
    new-instance v6, Landroidx/collection/ArrayMap;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    iget-object v8, v8, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-direct {v7, v8}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    move-object v3, v6

    .line 665
    .local v3, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    new-instance v6, Landroidx/collection/ArrayMap;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    iget-object v8, v8, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-direct {v7, v8}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    move-object v4, v6

    .line 667
    .local v4, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/Transition;->mMatchOrder:[I

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 668
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mMatchOrder:[I

    move v7, v5

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 667
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 670
    :pswitch_0
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Landroidx/transition/Transition;->matchInstances(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 671
    goto :goto_1

    .line 673
    :pswitch_1
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    move-object v9, v1

    iget-object v9, v9, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/transition/Transition;->matchNames(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 675
    goto :goto_1

    .line 677
    :pswitch_2
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    move-object v9, v1

    iget-object v9, v9, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/transition/Transition;->matchIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 679
    goto :goto_1

    .line 681
    :pswitch_3
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    move-object v9, v1

    iget-object v9, v9, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/transition/Transition;->matchItemIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V

    goto :goto_1

    .line 686
    :cond_0
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Landroidx/transition/Transition;->addUnmatched(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 687
    return-void

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .locals 12

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "matchOrderString":Ljava/lang/String;
    new-instance v6, Ljava/util/StringTokenizer;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string/jumbo v9, ","

    invoke-direct {v7, v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 304
    .local v1, "st":Ljava/util/StringTokenizer;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    new-array v6, v6, [I

    move-object v2, v6

    .line 305
    .local v2, "matches":[I
    const/4 v6, 0x0

    move v3, v6

    .line 306
    .local v3, "index":I
    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 307
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 308
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v6, "id"

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 309
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x3

    aput v8, v6, v7

    .line 325
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 326
    goto :goto_0

    .line 310
    :cond_0
    const-string/jumbo v6, "instance"

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 311
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_1

    .line 312
    :cond_1
    const-string/jumbo v6, "name"

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 313
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x2

    aput v8, v6, v7

    goto :goto_1

    .line 314
    :cond_2
    const-string/jumbo v6, "itemId"

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 315
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x4

    aput v8, v6, v7

    goto :goto_1

    .line 316
    :cond_3
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 318
    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [I

    move-object v5, v6

    .line 319
    .local v5, "smallerMatches":[I
    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    move-object v6, v5

    move-object v2, v6

    .line 321
    add-int/lit8 v3, v3, -0x1

    .line 322
    goto :goto_1

    .line 323
    .end local v5    # "smallerMatches":[I
    :cond_4
    new-instance v6, Landroid/view/InflateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown match type in matchOrder: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 327
    .end local v4    # "token":Ljava/lang/String;
    :cond_5
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "matchOrderString":Ljava/lang/String;
    return-object v0
.end method

.method private runAnimator(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 894
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, p2

    .local v2, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 896
    move-object v3, v1

    new-instance v4, Landroidx/transition/Transition$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/transition/Transition$2;-><init>(Landroidx/transition/Transition;Landroidx/collection/ArrayMap;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 908
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 910
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 6
    .param p1    # Landroidx/transition/Transition$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2033
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "listener":Landroidx/transition/Transition$TransitionListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2034
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2036
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2037
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public addTarget(I)Landroidx/transition/Transition;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1022
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move v1, p1

    .local v1, "targetId":I
    move v2, v1

    if-eqz v2, :cond_0

    .line 1023
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1025
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public addTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 999
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .locals 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1077
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "targetType":Ljava/lang/Class;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1078
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1080
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1081
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public addTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1047
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "targetName":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1048
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1050
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1051
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1895
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1896
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/Transition;->end()V

    .line 1916
    :goto_0
    return-void

    .line 1898
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 1899
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 1901
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 1902
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1904
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1905
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1907
    :cond_3
    move-object v2, v1

    new-instance v3, Landroidx/transition/Transition$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/transition/Transition$3;-><init>(Landroidx/transition/Transition;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1914
    move-object v2, v1

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected cancel()V
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2008
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v5

    .line 2009
    .local v1, "numAnimators":I
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    if-ltz v5, :cond_0

    .line 2010
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    move-object v3, v5

    .line 2011
    .local v3, "animator":Landroid/animation/Animator;
    move-object v5, v3

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 2009
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2013
    .end local v3    # "animator":Landroid/animation/Animator;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 2014
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2015
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v2, v5

    .line 2016
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 2017
    .local v3, "numListeners":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 2018
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$TransitionListener;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroidx/transition/Transition$TransitionListener;->onTransitionCancel(Landroidx/transition/Transition;)V

    .line 2017
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2021
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v3    # "numListeners":I
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Landroidx/transition/TransitionValues;)V
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method capturePropagationValues(Landroidx/transition/TransitionValues;)V
    .locals 8

    .prologue
    .line 2180
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    if-eqz v5, :cond_2

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2181
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    invoke-virtual {v5}, Landroidx/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 2182
    .local v2, "propertyNames":[Ljava/lang/String;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 2183
    .line 2196
    .end local v2    # "propertyNames":[Ljava/lang/String;
    :goto_0
    return-void

    .line 2185
    .restart local v2    # "propertyNames":[Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    move v3, v5

    .line 2186
    .local v3, "containsAll":Z
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 2187
    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2188
    const/4 v5, 0x0

    move v3, v5

    .line 2192
    :cond_1
    move v5, v3

    if-nez v5, :cond_2

    .line 2193
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/transition/TransitionPropagation;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2196
    .end local v2    # "propertyNames":[Ljava/lang/String;
    .end local v3    # "containsAll":Z
    .end local v4    # "i":I
    :cond_2
    goto :goto_0

    .line 2186
    .restart local v2    # "propertyNames":[Ljava/lang/String;
    .restart local v3    # "containsAll":Z
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public abstract captureStartValues(Landroidx/transition/TransitionValues;)V
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 12

    .prologue
    .line 1468
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "start":Z
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Landroidx/transition/Transition;->clearValues(Z)V

    .line 1469
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_a

    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1470
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1471
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1472
    :cond_2
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_0
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 1473
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v4, v8

    .line 1474
    .local v4, "id":I
    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1475
    .local v5, "view":Landroid/view/View;
    move-object v8, v5

    if-eqz v8, :cond_3

    .line 1476
    new-instance v8, Landroidx/transition/TransitionValues;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroidx/transition/TransitionValues;-><init>()V

    move-object v6, v8

    .line 1477
    .local v6, "values":Landroidx/transition/TransitionValues;
    move-object v8, v6

    move-object v9, v5

    iput-object v9, v8, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 1478
    move v8, v2

    if-eqz v8, :cond_4

    .line 1479
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 1483
    :goto_1
    move-object v8, v6

    iget-object v8, v8, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1484
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1485
    move v8, v2

    if-eqz v8, :cond_5

    .line 1486
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    move-object v9, v5

    move-object v10, v6

    invoke-static {v8, v9, v10}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1472
    .end local v6    # "values":Landroidx/transition/TransitionValues;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1481
    .restart local v6    # "values":Landroidx/transition/TransitionValues;
    :cond_4
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    goto :goto_1

    .line 1488
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    move-object v9, v5

    move-object v10, v6

    invoke-static {v8, v9, v10}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_2

    .line 1492
    .end local v4    # "id":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "values":Landroidx/transition/TransitionValues;
    :cond_6
    const/4 v8, 0x0

    move v3, v8

    :goto_3
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 1493
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v4, v8

    .line 1494
    .local v4, "view":Landroid/view/View;
    new-instance v8, Landroidx/transition/TransitionValues;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroidx/transition/TransitionValues;-><init>()V

    move-object v5, v8

    .line 1495
    .local v5, "values":Landroidx/transition/TransitionValues;
    move-object v8, v5

    move-object v9, v4

    iput-object v9, v8, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 1496
    move v8, v2

    if-eqz v8, :cond_7

    .line 1497
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 1501
    :goto_4
    move-object v8, v5

    iget-object v8, v8, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1502
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1503
    move v8, v2

    if-eqz v8, :cond_8

    .line 1504
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    move-object v9, v4

    move-object v10, v5

    invoke-static {v8, v9, v10}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1492
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1499
    :cond_7
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    goto :goto_4

    .line 1506
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    move-object v9, v4

    move-object v10, v5

    invoke-static {v8, v9, v10}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_5

    .line 1492
    .line 1512
    .end local v3    # "i":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "values":Landroidx/transition/TransitionValues;
    :cond_9
    :goto_6
    move v8, v2

    if-nez v8, :cond_d

    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    if-eqz v8, :cond_d

    .line 1513
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->size()I

    move-result v8

    move v3, v8

    .line 1514
    .local v3, "numOverrides":I
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move v10, v3

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v8

    .line 1515
    .local v4, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_7
    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_b

    .line 1516
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 1517
    .local v6, "fromName":Ljava/lang/String;
    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v9, v9, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1515
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1510
    .end local v3    # "numOverrides":I
    .end local v4    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "i":I
    .end local v6    # "fromName":Ljava/lang/String;
    :cond_a
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    goto :goto_6

    .line 1519
    .restart local v3    # "numOverrides":I
    .restart local v4    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v5    # "i":I
    :cond_b
    const/4 v8, 0x0

    move v5, v8

    :goto_8
    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_d

    .line 1520
    move-object v8, v4

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v6, v8

    .line 1521
    .local v6, "view":Landroid/view/View;
    move-object v8, v6

    if-eqz v8, :cond_c

    .line 1522
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v7, v8

    .line 1523
    .local v7, "toName":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v8, v8, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    move-object v9, v7

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1519
    .end local v7    # "toName":Ljava/lang/String;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1527
    .end local v3    # "numOverrides":I
    .end local v4    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_d
    return-void
.end method

.method clearValues(Z)V
    .locals 3

    .prologue
    .line 1576
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move v1, p1

    .local v1, "start":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 1577
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->clear()V

    .line 1578
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1579
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->clear()V

    .line 1585
    :goto_0
    return-void

    .line 1581
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->clear()V

    .line 1582
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1583
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->clear()V

    goto :goto_0
.end method

.method public clone()Landroidx/transition/Transition;
    .locals 6

    .prologue
    .line 2215
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v2, v0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    move-object v1, v2

    .line 2216
    .local v1, "clone":Landroidx/transition/Transition;
    move-object v2, v1

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2217
    move-object v2, v1

    new-instance v3, Landroidx/transition/TransitionValuesMaps;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v3, v2, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 2218
    move-object v2, v1

    new-instance v3, Landroidx/transition/TransitionValuesMaps;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v3, v2, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 2219
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2220
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2221
    move-object v2, v1

    move-object v0, v2

    .line 2223
    .end local v0    # "this":Landroidx/transition/Transition;
    .end local v1    # "clone":Landroidx/transition/Transition;
    :goto_0
    return-object v0

    .line 2222
    .restart local v0    # "this":Landroidx/transition/Transition;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2223
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5
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
    .line 486
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "startValues":Landroidx/transition/TransitionValues;
    move-object v3, p3

    .local v3, "endValues":Landroidx/transition/TransitionValues;
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 34
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 707
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/transition/Transition;
    move-object/from16 v3, p1

    .local v3, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v4, p2

    .local v4, "startValues":Landroidx/transition/TransitionValuesMaps;
    move-object/from16 v5, p3

    .local v5, "endValues":Landroidx/transition/TransitionValuesMaps;
    move-object/from16 v6, p4

    .local v6, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    move-object/from16 v7, p5

    .local v7, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v26

    move-object/from16 v8, v26

    .line 708
    .local v8, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    const-wide v26, 0x7fffffffffffffffL

    move-wide/from16 v9, v26

    .line 709
    .local v9, "minStartDelay":J
    new-instance v26, Landroid/util/SparseIntArray;

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    invoke-direct/range {v27 .. v27}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v11, v26

    .line 710
    .local v11, "startDelays":Landroid/util/SparseIntArray;
    move-object/from16 v26, v6

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v12, v26

    .line 711
    .local v12, "startValuesListCount":I
    const/16 v26, 0x0

    move/from16 v13, v26

    .local v13, "i":I
    :goto_0
    move/from16 v26, v13

    move/from16 v27, v12

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 712
    move-object/from16 v26, v6

    move/from16 v27, v13

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroidx/transition/TransitionValues;

    move-object/from16 v14, v26

    .line 713
    .local v14, "start":Landroidx/transition/TransitionValues;
    move-object/from16 v26, v7

    move/from16 v27, v13

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroidx/transition/TransitionValues;

    move-object/from16 v15, v26

    .line 714
    .local v15, "end":Landroidx/transition/TransitionValues;
    move-object/from16 v26, v14

    if-eqz v26, :cond_0

    move-object/from16 v26, v14

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 715
    const/16 v26, 0x0

    move-object/from16 v14, v26

    .line 717
    :cond_0
    move-object/from16 v26, v15

    if-eqz v26, :cond_1

    move-object/from16 v26, v15

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 718
    const/16 v26, 0x0

    move-object/from16 v15, v26

    .line 720
    :cond_1
    move-object/from16 v26, v14

    if-nez v26, :cond_3

    move-object/from16 v26, v15

    if-nez v26, :cond_3

    .line 721
    .line 711
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 724
    :cond_3
    move-object/from16 v26, v14

    if-eqz v26, :cond_4

    move-object/from16 v26, v15

    if-eqz v26, :cond_4

    move-object/from16 v26, v2

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    invoke-virtual/range {v26 .. v28}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    move-result v26

    if-eqz v26, :cond_5

    :cond_4
    const/16 v26, 0x1

    :goto_2
    move/from16 v16, v26

    .line 725
    .local v16, "isChanged":Z
    move/from16 v26, v16

    if-eqz v26, :cond_2

    .line 744
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    invoke-virtual/range {v26 .. v29}, Landroidx/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v26

    move-object/from16 v17, v26

    .line 745
    .local v17, "animator":Landroid/animation/Animator;
    move-object/from16 v26, v17

    if-eqz v26, :cond_2

    .line 748
    const/16 v26, 0x0

    move-object/from16 v19, v26

    .line 749
    .local v19, "infoValues":Landroidx/transition/TransitionValues;
    move-object/from16 v26, v15

    if-eqz v26, :cond_a

    .line 750
    move-object/from16 v26, v15

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v18, v26

    .line 751
    .local v18, "view":Landroid/view/View;
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v20, v26

    .line 752
    .local v20, "properties":[Ljava/lang/String;
    move-object/from16 v26, v18

    if-eqz v26, :cond_7

    move-object/from16 v26, v20

    if-eqz v26, :cond_7

    move-object/from16 v26, v20

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_7

    .line 753
    new-instance v26, Landroidx/transition/TransitionValues;

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    invoke-direct/range {v27 .. v27}, Landroidx/transition/TransitionValues;-><init>()V

    move-object/from16 v19, v26

    .line 754
    move-object/from16 v26, v19

    move-object/from16 v27, v18

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 755
    move-object/from16 v26, v5

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v27, v18

    invoke-virtual/range {v26 .. v27}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroidx/transition/TransitionValues;

    move-object/from16 v21, v26

    .line 756
    .local v21, "newValues":Landroidx/transition/TransitionValues;
    move-object/from16 v26, v21

    if-eqz v26, :cond_6

    .line 757
    const/16 v26, 0x0

    move/from16 v22, v26

    .local v22, "j":I
    :goto_3
    move/from16 v26, v22

    move-object/from16 v27, v20

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 758
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v27, v20

    move/from16 v28, v22

    aget-object v27, v27, v28

    move-object/from16 v28, v21

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v29, v20

    move/from16 v30, v22

    aget-object v29, v29, v30

    .line 759
    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 758
    invoke-interface/range {v26 .. v28}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 757
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 724
    .end local v16    # "isChanged":Z
    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v18    # "view":Landroid/view/View;
    .end local v19    # "infoValues":Landroidx/transition/TransitionValues;
    .end local v20    # "properties":[Ljava/lang/String;
    .end local v21    # "newValues":Landroidx/transition/TransitionValues;
    .end local v22    # "j":I
    :cond_5
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 762
    .restart local v16    # "isChanged":Z
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v18    # "view":Landroid/view/View;
    .restart local v19    # "infoValues":Landroidx/transition/TransitionValues;
    .restart local v20    # "properties":[Ljava/lang/String;
    .restart local v21    # "newValues":Landroidx/transition/TransitionValues;
    :cond_6
    move-object/from16 v26, v8

    invoke-virtual/range {v26 .. v26}, Landroidx/collection/ArrayMap;->size()I

    move-result v26

    move/from16 v22, v26

    .line 763
    .local v22, "numExistingAnims":I
    const/16 v26, 0x0

    move/from16 v23, v26

    .local v23, "j":I
    :goto_4
    move/from16 v26, v23

    move/from16 v27, v22

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 764
    move-object/from16 v26, v8

    move/from16 v27, v23

    invoke-virtual/range {v26 .. v27}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/animation/Animator;

    move-object/from16 v24, v26

    .line 765
    .local v24, "anim":Landroid/animation/Animator;
    move-object/from16 v26, v8

    move-object/from16 v27, v24

    invoke-virtual/range {v26 .. v27}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroidx/transition/Transition$AnimationInfo;

    move-object/from16 v25, v26

    .line 766
    .local v25, "info":Landroidx/transition/Transition$AnimationInfo;
    move-object/from16 v26, v25

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    move-object/from16 v26, v25

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v27, v18

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_9

    move-object/from16 v26, v25

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    .line 767
    invoke-virtual/range {v27 .. v27}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 768
    move-object/from16 v26, v25

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    move-object/from16 v26, v0

    move-object/from16 v27, v19

    invoke-virtual/range {v26 .. v27}, Landroidx/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 770
    const/16 v26, 0x0

    move-object/from16 v17, v26

    .line 776
    .line 779
    .end local v20    # "properties":[Ljava/lang/String;
    .end local v21    # "newValues":Landroidx/transition/TransitionValues;
    .end local v22    # "numExistingAnims":I
    .end local v23    # "j":I
    .end local v24    # "anim":Landroid/animation/Animator;
    .end local v25    # "info":Landroidx/transition/Transition$AnimationInfo;
    :cond_7
    :goto_5
    move-object/from16 v26, v17

    if-eqz v26, :cond_2

    .line 780
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    .line 781
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    invoke-virtual/range {v26 .. v30}, Landroidx/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J

    move-result-wide v26

    move-wide/from16 v20, v26

    .line 782
    .local v20, "delay":J
    move-object/from16 v26, v11

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move-wide/from16 v28, v20

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/util/SparseIntArray;->put(II)V

    .line 783
    move-wide/from16 v26, v20

    move-wide/from16 v28, v9

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    move-wide/from16 v9, v26

    .line 785
    .end local v20    # "delay":J
    :cond_8
    new-instance v26, Landroidx/transition/Transition$AnimationInfo;

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    move-object/from16 v28, v18

    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    .line 786
    invoke-static/range {v31 .. v31}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v31

    move-object/from16 v32, v19

    invoke-direct/range {v27 .. v32}, Landroidx/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroidx/transition/WindowIdImpl;Landroidx/transition/TransitionValues;)V

    move-object/from16 v20, v26

    .line 787
    .local v20, "info":Landroidx/transition/Transition$AnimationInfo;
    move-object/from16 v26, v8

    move-object/from16 v27, v17

    move-object/from16 v28, v20

    invoke-virtual/range {v26 .. v28}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 788
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v26

    goto/16 :goto_1

    .line 763
    .local v20, "properties":[Ljava/lang/String;
    .restart local v21    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v22    # "numExistingAnims":I
    .restart local v23    # "j":I
    .restart local v24    # "anim":Landroid/animation/Animator;
    .restart local v25    # "info":Landroidx/transition/Transition$AnimationInfo;
    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 777
    .end local v18    # "view":Landroid/view/View;
    .end local v20    # "properties":[Ljava/lang/String;
    .end local v21    # "newValues":Landroidx/transition/TransitionValues;
    .end local v22    # "numExistingAnims":I
    .end local v23    # "j":I
    .end local v24    # "anim":Landroid/animation/Animator;
    .end local v25    # "info":Landroidx/transition/Transition$AnimationInfo;
    :cond_a
    move-object/from16 v26, v14

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v18, v26

    .restart local v18    # "view":Landroid/view/View;
    goto/16 :goto_5

    .line 793
    .end local v14    # "start":Landroidx/transition/TransitionValues;
    .end local v15    # "end":Landroidx/transition/TransitionValues;
    .end local v16    # "isChanged":Z
    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v18    # "view":Landroid/view/View;
    .end local v19    # "infoValues":Landroidx/transition/TransitionValues;
    :cond_b
    move-wide/from16 v26, v9

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_c

    .line 794
    const/16 v26, 0x0

    move/from16 v13, v26

    :goto_6
    move/from16 v26, v13

    move-object/from16 v27, v11

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseIntArray;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 795
    move-object/from16 v26, v11

    move/from16 v27, v13

    invoke-virtual/range {v26 .. v27}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v26

    move/from16 v14, v26

    .line 796
    .local v14, "index":I
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move/from16 v27, v14

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/animation/Animator;

    move-object/from16 v15, v26

    .line 797
    .local v15, "animator":Landroid/animation/Animator;
    move-object/from16 v26, v11

    move/from16 v27, v13

    invoke-virtual/range {v26 .. v27}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v9

    sub-long v26, v26, v28

    move-object/from16 v28, v15

    invoke-virtual/range {v28 .. v28}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v28

    add-long v26, v26, v28

    move-wide/from16 v16, v26

    .line 798
    .local v16, "delay":J
    move-object/from16 v26, v15

    move-wide/from16 v27, v16

    invoke-virtual/range {v26 .. v28}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 794
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 801
    .end local v14    # "index":I
    .end local v15    # "animator":Landroid/animation/Animator;
    .end local v16    # "delay":J
    :cond_c
    return-void
.end method

.method protected end()V
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1954
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/transition/Transition;->mNumInstances:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroidx/transition/Transition;->mNumInstances:I

    .line 1955
    move-object v4, v0

    iget v4, v4, Landroidx/transition/Transition;->mNumInstances:I

    if-nez v4, :cond_5

    .line 1956
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1957
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1958
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    .line 1959
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 1960
    .local v2, "numListeners":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 1961
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    move-object v5, v0

    invoke-interface {v4, v5}, Landroidx/transition/Transition$TransitionListener;->onTransitionEnd(Landroidx/transition/Transition;)V

    .line 1960
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1964
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    .local v1, "i":I
    :goto_1
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1965
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 1966
    .local v2, "view":Landroid/view/View;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 1967
    move-object v4, v2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1964
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1970
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    :goto_2
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1971
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 1972
    .restart local v2    # "view":Landroid/view/View;
    move-object v4, v2

    if-eqz v4, :cond_3

    .line 1973
    move-object v4, v2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1970
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1976
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Transition;->mEnded:Z

    .line 1978
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Landroidx/transition/Transition;
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1299
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move v1, p1

    .local v1, "targetId":I
    move v2, p2

    .local v2, "exclude":Z
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroidx/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 1300
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroidx/transition/Transition;
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1269
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "exclude":Z
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    move-object v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroidx/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 1270
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .locals 8
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1382
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;
    move v2, p2

    .local v2, "exclude":Z
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    move-object v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroidx/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 1383
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public excludeTarget(IZ)Landroidx/transition/Transition;
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1217
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move v1, p1

    .local v1, "targetId":I
    move v2, p2

    .local v2, "exclude":Z
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroidx/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 1218
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "exclude":Z
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    move-object v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroidx/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 1192
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .locals 8
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1355
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;
    move v2, p2

    .local v2, "exclude":Z
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    move-object v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroidx/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 1356
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1243
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "targetName":Ljava/lang/String;
    move v2, p2

    .local v2, "exclude":Z
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    move-object v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroidx/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 1244
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1987
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v8

    move-object v2, v8

    .line 1988
    .local v2, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    move-object v8, v2

    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->size()I

    move-result v8

    move v3, v8

    .line 1989
    .local v3, "numOldAnims":I
    move-object v8, v1

    if-eqz v8, :cond_1

    .line 1990
    move-object v8, v1

    invoke-static {v8}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v8

    move-object v4, v8

    .line 1991
    .local v4, "windowId":Landroidx/transition/WindowIdImpl;
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    if-ltz v8, :cond_1

    .line 1992
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/transition/Transition$AnimationInfo;

    move-object v6, v8

    .line 1993
    .local v6, "info":Landroidx/transition/Transition$AnimationInfo;
    move-object v8, v6

    iget-object v8, v8, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v8, :cond_0

    move-object v8, v4

    if-eqz v8, :cond_0

    move-object v8, v4

    move-object v9, v6

    iget-object v9, v9, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1994
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator;

    move-object v7, v8

    .line 1995
    .local v7, "anim":Landroid/animation/Animator;
    move-object v8, v7

    invoke-virtual {v8}, Landroid/animation/Animator;->end()V

    .line 1991
    .end local v7    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1999
    .end local v4    # "windowId":Landroidx/transition/WindowIdImpl;
    .end local v5    # "i":I
    .end local v6    # "info":Landroidx/transition/Transition$AnimationInfo;
    :cond_1
    return-void
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-wide v1, v1, Landroidx/transition/Transition;->mDuration:J

    move-wide v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2137
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    if-nez v1, :cond_0

    .line 2138
    const/4 v1, 0x0

    move-object v0, v1

    .line 2140
    .end local v0    # "this":Landroidx/transition/Transition;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/transition/Transition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroidx/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getEpicenterCallback()Landroidx/transition/Transition$EpicenterCallback;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2124
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 11

    .prologue
    .line 1682
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "viewInStart":Z
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v8, :cond_0

    .line 1683
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    move-object v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v8

    move-object v0, v8

    .line 1706
    .end local v0    # "this":Landroidx/transition/Transition;
    :goto_0
    return-object v0

    .line 1685
    .restart local v0    # "this":Landroidx/transition/Transition;
    :cond_0
    move v8, v2

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    :goto_1
    move-object v3, v8

    .line 1686
    .local v3, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    move-object v8, v3

    if-nez v8, :cond_2

    .line 1687
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 1685
    .end local v3    # "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_1

    .line 1689
    .restart local v3    # "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :cond_2
    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v8

    .line 1690
    .local v4, "count":I
    const/4 v8, -0x1

    move v5, v8

    .line 1691
    .local v5, "index":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_2
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_4

    .line 1692
    move-object v8, v3

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/transition/TransitionValues;

    move-object v7, v8

    .line 1693
    .local v7, "values":Landroidx/transition/TransitionValues;
    move-object v8, v7

    if-nez v8, :cond_3

    .line 1694
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 1696
    :cond_3
    move-object v8, v7

    iget-object v8, v8, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v9, v1

    if-ne v8, v9, :cond_6

    .line 1697
    move v8, v6

    move v5, v8

    .line 1701
    .end local v7    # "values":Landroidx/transition/TransitionValues;
    :cond_4
    const/4 v8, 0x0

    move-object v6, v8

    .line 1702
    .local v6, "values":Landroidx/transition/TransitionValues;
    move v8, v5

    if-ltz v8, :cond_5

    .line 1703
    move v8, v2

    if-eqz v8, :cond_7

    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    :goto_3
    move-object v7, v8

    .line 1704
    .local v7, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    move-object v8, v7

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/transition/TransitionValues;

    move-object v6, v8

    .line 1706
    .end local v7    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :cond_5
    move-object v8, v6

    move-object v0, v8

    goto :goto_0

    .line 1691
    .local v6, "i":I
    .local v7, "values":Landroidx/transition/TransitionValues;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1703
    .end local v7    # "values":Landroidx/transition/TransitionValues;
    .local v6, "values":Landroidx/transition/TransitionValues;
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_3
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2241
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public getPathMotion()Landroidx/transition/PathMotion;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2094
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public getPropagation()Landroidx/transition/TransitionPropagation;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2172
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public getStartDelay()J
    .locals 3

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-wide v1, v1, Landroidx/transition/Transition;->mStartDelay:J

    move-wide v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1412
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1441
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1456
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1426
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1663
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "start":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v4, :cond_0

    .line 1664
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v4

    move-object v0, v4

    .line 1667
    .end local v0    # "this":Landroidx/transition/Transition;
    :goto_0
    return-object v0

    .line 1666
    .restart local v0    # "this":Landroidx/transition/Transition;
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    :goto_1
    move-object v3, v4

    .line 1667
    .local v3, "valuesMaps":Landroidx/transition/TransitionValuesMaps;
    move-object v4, v3

    iget-object v4, v4, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionValues;

    move-object v0, v4

    goto :goto_0

    .line 1666
    .end local v3    # "valuesMaps":Landroidx/transition/TransitionValuesMaps;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    goto :goto_1
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 12
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1836
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "startValues":Landroidx/transition/TransitionValues;
    move-object v2, p2

    .local v2, "endValues":Landroidx/transition/TransitionValues;
    const/4 v9, 0x0

    move v3, v9

    .line 1839
    .local v3, "valuesChanged":Z
    move-object v9, v1

    if-eqz v9, :cond_0

    move-object v9, v2

    if-eqz v9, :cond_0

    .line 1840
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 1841
    .local v4, "properties":[Ljava/lang/String;
    move-object v9, v4

    if-eqz v9, :cond_2

    .line 1842
    move-object v9, v4

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 1843
    .local v8, "property":Ljava/lang/String;
    move-object v9, v1

    move-object v10, v2

    move-object v11, v8

    invoke-static {v9, v10, v11}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1844
    const/4 v9, 0x1

    move v3, v9

    .line 1842
    .line 1857
    .end local v4    # "properties":[Ljava/lang/String;
    .end local v8    # "property":Ljava/lang/String;
    :cond_0
    :goto_1
    move v9, v3

    move v0, v9

    .end local v0    # "this":Landroidx/transition/Transition;
    return v0

    .line 1842
    .restart local v0    # "this":Landroidx/transition/Transition;
    .restart local v4    # "properties":[Ljava/lang/String;
    .restart local v8    # "property":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1849
    .end local v8    # "property":Ljava/lang/String;
    :cond_2
    move-object v9, v1

    iget-object v9, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_2
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v6, v9

    .line 1850
    .local v6, "key":Ljava/lang/String;
    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    invoke-static {v9, v10, v11}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1851
    const/4 v9, 0x1

    move v3, v9

    .line 1852
    goto :goto_1

    .line 1854
    :cond_3
    goto :goto_2
.end method

.method isValidTarget(Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 814
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    move v2, v6

    .line 815
    .local v2, "targetId":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    move v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 816
    const/4 v6, 0x0

    move v0, v6

    .line 853
    .end local v0    # "this":Landroidx/transition/Transition;
    :goto_0
    return v0

    .line 818
    .restart local v0    # "this":Landroidx/transition/Transition;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 819
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 821
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 822
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 823
    .local v3, "numTypes":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 824
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    move-object v5, v6

    .line 825
    .local v5, "type":Ljava/lang/Class;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 826
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 823
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 830
    .end local v3    # "numTypes":I
    .end local v4    # "i":I
    .end local v5    # "type":Ljava/lang/Class;
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    move-object v6, v1

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 831
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 832
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 835
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 836
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 837
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 838
    :cond_6
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 840
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    move v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 841
    :cond_8
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 843
    :cond_9
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 844
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 846
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v6, :cond_c

    .line 847
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_2
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 848
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 849
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 847
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 853
    .end local v3    # "i":I
    :cond_c
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0
.end method

.method public pause(Landroid/view/View;)V
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1718
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/View;
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/transition/Transition;->mEnded:Z

    if-nez v8, :cond_3

    .line 1719
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v8

    move-object v2, v8

    .line 1720
    .local v2, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    move-object v8, v2

    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->size()I

    move-result v8

    move v3, v8

    .line 1721
    .local v3, "numOldAnims":I
    move-object v8, v1

    invoke-static {v8}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v8

    move-object v4, v8

    .line 1722
    .local v4, "windowId":Landroidx/transition/WindowIdImpl;
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    if-ltz v8, :cond_1

    .line 1723
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/transition/Transition$AnimationInfo;

    move-object v6, v8

    .line 1724
    .local v6, "info":Landroidx/transition/Transition$AnimationInfo;
    move-object v8, v6

    iget-object v8, v8, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v8, :cond_0

    move-object v8, v4

    move-object v9, v6

    iget-object v9, v9, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1725
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator;

    move-object v7, v8

    .line 1726
    .local v7, "anim":Landroid/animation/Animator;
    move-object v8, v7

    invoke-static {v8}, Landroidx/transition/AnimatorUtils;->pause(Landroid/animation/Animator;)V

    .line 1722
    .end local v7    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1729
    .end local v6    # "info":Landroidx/transition/Transition$AnimationInfo;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1730
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1731
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    move-object v5, v8

    .line 1732
    .local v5, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    move-object v8, v5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v8

    .line 1733
    .local v6, "numListeners":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_2

    .line 1734
    move-object v8, v5

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/transition/Transition$TransitionListener;

    move-object v9, v0

    invoke-interface {v8, v9}, Landroidx/transition/Transition$TransitionListener;->onTransitionPause(Landroidx/transition/Transition;)V

    .line 1733
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1737
    .end local v5    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v6    # "numListeners":I
    .end local v7    # "i":I
    :cond_2
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/transition/Transition;->mPaused:Z

    .line 1739
    .end local v2    # "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    .end local v3    # "numOldAnims":I
    .end local v4    # "windowId":Landroidx/transition/WindowIdImpl;
    :cond_3
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 21

    .prologue
    .line 1781
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/transition/Transition;
    move-object/from16 v2, p1

    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object v14, v1

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1782
    move-object v14, v1

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1783
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroidx/transition/Transition;->matchStartAndEnd(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V

    .line 1785
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v14

    move-object v3, v14

    .line 1786
    .local v3, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    move-object v14, v3

    invoke-virtual {v14}, Landroidx/collection/ArrayMap;->size()I

    move-result v14

    move v4, v14

    .line 1787
    .local v4, "numOldAnims":I
    move-object v14, v2

    invoke-static {v14}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v14

    move-object v5, v14

    .line 1788
    .local v5, "windowId":Landroidx/transition/WindowIdImpl;
    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v6, v14

    .local v6, "i":I
    :goto_0
    move v14, v6

    if-ltz v14, :cond_5

    .line 1789
    move-object v14, v3

    move v15, v6

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/Animator;

    move-object v7, v14

    .line 1790
    .local v7, "anim":Landroid/animation/Animator;
    move-object v14, v7

    if-eqz v14, :cond_2

    .line 1791
    move-object v14, v3

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/transition/Transition$AnimationInfo;

    move-object v8, v14

    .line 1792
    .local v8, "oldInfo":Landroidx/transition/Transition$AnimationInfo;
    move-object v14, v8

    if-eqz v14, :cond_2

    move-object v14, v8

    iget-object v14, v14, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v14, :cond_2

    move-object v14, v5

    move-object v15, v8

    iget-object v15, v15, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    .line 1793
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1794
    move-object v14, v8

    iget-object v14, v14, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    move-object v9, v14

    .line 1795
    .local v9, "oldValues":Landroidx/transition/TransitionValues;
    move-object v14, v8

    iget-object v14, v14, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    move-object v10, v14

    .line 1796
    .local v10, "oldView":Landroid/view/View;
    move-object v14, v1

    move-object v15, v10

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v14

    move-object v11, v14

    .line 1797
    .local v11, "startValues":Landroidx/transition/TransitionValues;
    move-object v14, v1

    move-object v15, v10

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v14

    move-object v12, v14

    .line 1798
    .local v12, "endValues":Landroidx/transition/TransitionValues;
    move-object v14, v11

    if-nez v14, :cond_0

    move-object v14, v12

    if-eqz v14, :cond_3

    :cond_0
    move-object v14, v8

    iget-object v14, v14, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    move-object v15, v9

    move-object/from16 v16, v12

    .line 1799
    invoke-virtual/range {v14 .. v16}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    move v13, v14

    .line 1800
    .local v13, "cancel":Z
    move v14, v13

    if-eqz v14, :cond_2

    .line 1801
    move-object v14, v7

    invoke-virtual {v14}, Landroid/animation/Animator;->isRunning()Z

    move-result v14

    if-nez v14, :cond_1

    move-object v14, v7

    invoke-virtual {v14}, Landroid/animation/Animator;->isStarted()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1805
    :cond_1
    move-object v14, v7

    invoke-virtual {v14}, Landroid/animation/Animator;->cancel()V

    .line 1788
    .end local v8    # "oldInfo":Landroidx/transition/Transition$AnimationInfo;
    .end local v9    # "oldValues":Landroidx/transition/TransitionValues;
    .end local v10    # "oldView":Landroid/view/View;
    .end local v11    # "startValues":Landroidx/transition/TransitionValues;
    .end local v12    # "endValues":Landroidx/transition/TransitionValues;
    .end local v13    # "cancel":Z
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1799
    .restart local v8    # "oldInfo":Landroidx/transition/Transition$AnimationInfo;
    .restart local v9    # "oldValues":Landroidx/transition/TransitionValues;
    .restart local v10    # "oldView":Landroid/view/View;
    .restart local v11    # "startValues":Landroidx/transition/TransitionValues;
    .restart local v12    # "endValues":Landroidx/transition/TransitionValues;
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 1810
    .restart local v13    # "cancel":Z
    :cond_4
    move-object v14, v3

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_2

    .line 1817
    .end local v7    # "anim":Landroid/animation/Animator;
    .end local v8    # "oldInfo":Landroidx/transition/Transition$AnimationInfo;
    .end local v9    # "oldValues":Landroidx/transition/TransitionValues;
    .end local v10    # "oldView":Landroid/view/View;
    .end local v11    # "startValues":Landroidx/transition/TransitionValues;
    .end local v12    # "endValues":Landroidx/transition/TransitionValues;
    .end local v13    # "cancel":Z
    :cond_5
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v14 .. v19}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1818
    move-object v14, v1

    invoke-virtual {v14}, Landroidx/transition/Transition;->runAnimators()V

    .line 1819
    return-void
.end method

.method public removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Landroidx/transition/Transition$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2049
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "listener":Landroidx/transition/Transition$TransitionListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2050
    move-object v2, v0

    move-object v0, v2

    .line 2056
    .end local v0    # "this":Landroidx/transition/Transition;
    :goto_0
    return-object v0

    .line 2052
    .restart local v0    # "this":Landroidx/transition/Transition;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2053
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2054
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2056
    :cond_1
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public removeTarget(I)Landroidx/transition/Transition;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move v1, p1

    .local v1, "targetId":I
    move v2, v1

    if-eqz v2, :cond_0

    .line 1113
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1115
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public removeTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1096
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1097
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1148
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "target":Ljava/lang/Class;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1149
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1151
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1130
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "targetName":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1131
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1133
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public resume(Landroid/view/View;)V
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1750
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/View;
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/transition/Transition;->mPaused:Z

    if-eqz v8, :cond_3

    .line 1751
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/transition/Transition;->mEnded:Z

    if-nez v8, :cond_2

    .line 1752
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v8

    move-object v2, v8

    .line 1753
    .local v2, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    move-object v8, v2

    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->size()I

    move-result v8

    move v3, v8

    .line 1754
    .local v3, "numOldAnims":I
    move-object v8, v1

    invoke-static {v8}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v8

    move-object v4, v8

    .line 1755
    .local v4, "windowId":Landroidx/transition/WindowIdImpl;
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    if-ltz v8, :cond_1

    .line 1756
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/transition/Transition$AnimationInfo;

    move-object v6, v8

    .line 1757
    .local v6, "info":Landroidx/transition/Transition$AnimationInfo;
    move-object v8, v6

    iget-object v8, v8, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v8, :cond_0

    move-object v8, v4

    move-object v9, v6

    iget-object v9, v9, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1758
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator;

    move-object v7, v8

    .line 1759
    .local v7, "anim":Landroid/animation/Animator;
    move-object v8, v7

    invoke-static {v8}, Landroidx/transition/AnimatorUtils;->resume(Landroid/animation/Animator;)V

    .line 1755
    .end local v7    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1762
    .end local v6    # "info":Landroidx/transition/Transition$AnimationInfo;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1763
    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1764
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    move-object v5, v8

    .line 1765
    .local v5, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    move-object v8, v5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v8

    .line 1766
    .local v6, "numListeners":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_2

    .line 1767
    move-object v8, v5

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/transition/Transition$TransitionListener;

    move-object v9, v0

    invoke-interface {v8, v9}, Landroidx/transition/Transition$TransitionListener;->onTransitionResume(Landroidx/transition/Transition;)V

    .line 1766
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1771
    .end local v2    # "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    .end local v3    # "numOldAnims":I
    .end local v4    # "windowId":Landroidx/transition/WindowIdImpl;
    .end local v5    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v6    # "numListeners":I
    .end local v7    # "i":I
    :cond_2
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/transition/Transition;->mPaused:Z

    .line 1773
    :cond_3
    return-void
.end method

.method protected runAnimators()V
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/transition/Transition;->start()V

    .line 877
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v4

    move-object v1, v4

    .line 879
    .local v1, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    move-object v3, v4

    .line 883
    .local v3, "anim":Landroid/animation/Animator;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 884
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/transition/Transition;->start()V

    .line 885
    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V

    .line 887
    :cond_0
    goto :goto_0

    .line 888
    .end local v3    # "anim":Landroid/animation/Animator;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 889
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/transition/Transition;->end()V

    .line 890
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 4

    .prologue
    .line 2204
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move v1, p1

    .local v1, "canRemoveViews":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 2205
    return-void
.end method

.method public setDuration(J)Landroidx/transition/Transition;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-wide v1, p1

    .local v1, "duration":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/transition/Transition;->mDuration:J

    .line 342
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition$EpicenterCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2109
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "epicenterCallback":Landroidx/transition/Transition$EpicenterCallback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    .line 2110
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 396
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public varargs setMatchOrder([I)V
    .locals 8

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "matches":[I
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    array-length v4, v4

    if-nez v4, :cond_1

    .line 508
    :cond_0
    move-object v4, v0

    sget-object v5, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v5, v4, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 521
    :goto_0
    return-void

    .line 510
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 511
    move-object v4, v1

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 512
    .local v3, "match":I
    move v4, v3

    invoke-static {v4}, Landroidx/transition/Transition;->isValidMatch(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 513
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "matches contains invalid value"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 515
    :cond_2
    move-object v4, v1

    move v5, v2

    invoke-static {v4, v5}, Landroidx/transition/Transition;->alreadyContains([II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 516
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "matches contains a duplicate value"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 510
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 519
    .end local v3    # "match":I
    :cond_4
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    iput-object v5, v4, Landroidx/transition/Transition;->mMatchOrder:[I

    goto :goto_0
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .locals 4
    .param p1    # Landroidx/transition/PathMotion;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2076
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "pathMotion":Landroidx/transition/PathMotion;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2077
    move-object v2, v0

    sget-object v3, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v3, v2, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 2081
    :goto_0
    return-void

    .line 2079
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    goto :goto_0
.end method

.method public setPropagation(Landroidx/transition/TransitionPropagation;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionPropagation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2155
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "transitionPropagation":Landroidx/transition/TransitionPropagation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 2156
    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/Transition;
    .locals 4

    .prologue
    .line 2199
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 2200
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method public setStartDelay(J)Landroidx/transition/Transition;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-wide v1, p1

    .local v1, "startDelay":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/transition/Transition;->mStartDelay:J

    .line 369
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method protected start()V
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1927
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v4, v0

    iget v4, v4, Landroidx/transition/Transition;->mNumInstances:I

    if-nez v4, :cond_1

    .line 1928
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1929
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1930
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    .line 1931
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 1932
    .local v2, "numListeners":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 1933
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    move-object v5, v0

    invoke-interface {v4, v5}, Landroidx/transition/Transition$TransitionListener;->onTransitionStart(Landroidx/transition/Transition;)V

    .line 1932
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1936
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Transition;->mEnded:Z

    .line 1938
    :cond_1
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/transition/Transition;->mNumInstances:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/transition/Transition;->mNumInstances:I

    .line 1939
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2209
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 2245
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition;
    move-object v1, p1

    .local v1, "indent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 2246
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2247
    .local v2, "result":Ljava/lang/String;
    move-object v4, v0

    iget-wide v4, v4, Landroidx/transition/Transition;->mDuration:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 2248
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "dur("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-wide v5, v5, Landroidx/transition/Transition;->mDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2250
    :cond_0
    move-object v4, v0

    iget-wide v4, v4, Landroidx/transition/Transition;->mStartDelay:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 2251
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "dly("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-wide v5, v5, Landroidx/transition/Transition;->mStartDelay:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2253
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v4, :cond_2

    .line 2254
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "interp("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2256
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 2257
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "tgts("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2258
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 2259
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 2260
    move v4, v3

    if-lez v4, :cond_4

    .line 2261
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2263
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2259
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2266
    .end local v3    # "i":I
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 2267
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 2268
    move v4, v3

    if-lez v4, :cond_6

    .line 2269
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2271
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2267
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2274
    .end local v3    # "i":I
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2276
    :cond_8
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/Transition;
    return-object v0
.end method
