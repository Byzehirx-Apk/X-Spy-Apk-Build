.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;,
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$ContentAlignment;
    }
.end annotation


# static fields
.field protected static final ANCHOR_BASELINE:I = 0x4

.field protected static final ANCHOR_BOTTOM:I = 0x3

.field protected static final ANCHOR_LEFT:I = 0x0

.field protected static final ANCHOR_RIGHT:I = 0x1

.field protected static final ANCHOR_TOP:I = 0x2

.field private static final AUTOTAG_CENTER:Z = false

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.0f

.field static final DIMENSION_HORIZONTAL:I = 0x0

.field static final DIMENSION_VERTICAL:I = 0x1

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_RATIO:I = 0x3

.field public static final MATCH_CONSTRAINT_RATIO_RESOLVED:I = 0x4

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I = 0x0

.field private static final WRAP:I = -0x2


# instance fields
.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

.field mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field protected mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mDrawX:I

.field private mDrawY:I

.field mGroupsToSolver:Z

.field mHeight:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field mIsHeightWrapContent:Z

.field mIsWidthWrapContent:Z

.field mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field protected mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field protected mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field mMatchConstraintDefaultHeight:I

.field mMatchConstraintDefaultWidth:I

.field mMatchConstraintMaxHeight:I

.field mMatchConstraintMaxWidth:I

.field mMatchConstraintMinHeight:I

.field mMatchConstraintMinWidth:I

.field mMatchConstraintPercentHeight:F

.field mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field mOptimizerMeasurable:Z

.field mOptimizerMeasured:Z

.field mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field mRelX:I

.field mRelY:I

.field mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedMatchConstraintDefault:[I

.field mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field mWeight:[F

.field mWidth:I

.field private mWrapHeight:I

.field private mWrapWidth:I

.field protected mX:I

.field protected mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 69
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 76
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 77
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 78
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 80
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 81
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 82
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 83
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 84
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 85
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 89
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 90
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 95
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    .line 97
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 98
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 148
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 149
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 150
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 151
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 152
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 153
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 154
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 155
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 163
    move-object v1, v0

    const/4 v2, 0x6

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 164
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 169
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v3, v4

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 172
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 175
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 176
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 177
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 178
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 181
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 182
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 183
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 184
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 187
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 188
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 189
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 190
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 193
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 194
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 197
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 210
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 211
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 219
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 222
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 224
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 225
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 237
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 238
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 239
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 242
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 243
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 247
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 249
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 250
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 252
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 253
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 408
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 409
    return-void

    .line 97
    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 247
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 436
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 11

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 69
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 76
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 77
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 78
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 80
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 81
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 82
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 83
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 84
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 85
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 89
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 90
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 95
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    .line 97
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 98
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 148
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 149
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 150
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 151
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 152
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 153
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 154
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 155
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 163
    move-object v5, v0

    const/4 v6, 0x6

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x3

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x4

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x5

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 164
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 169
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v9, v7, v8

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 172
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 175
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 176
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 177
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 178
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 181
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 182
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 183
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 184
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 187
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 188
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 189
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 190
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 193
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 194
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 197
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 210
    move-object v5, v0

    sget v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 211
    move-object v5, v0

    sget v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 219
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 222
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 224
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 225
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 237
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 238
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 239
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 242
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 243
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 247
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 249
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 250
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 252
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 253
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 420
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 421
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 422
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 423
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 424
    move-object v5, v0

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 425
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->forceUpdateDrawPosition()V

    .line 426
    return-void

    .line 97
    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 247
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private addAnchors()V
    .locals 3

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 457
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 458
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 459
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 460
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 461
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 462
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 463
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 464
    return-void
.end method

.method private applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V
    .locals 53

    .prologue
    .line 2612
    move-object/from16 v4, p0

    .local v4, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v5, p1

    .local v5, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move/from16 v6, p2

    .local v6, "parentWrapContent":Z
    move-object/from16 v7, p3

    .local v7, "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v8, p4

    .local v8, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v9, p5

    .local v9, "dimensionBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    move/from16 v10, p6

    .local v10, "wrapContent":Z
    move-object/from16 v11, p7

    .local v11, "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v12, p8

    .local v12, "endAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v13, p9

    .local v13, "beginPosition":I
    move/from16 v14, p10

    .local v14, "dimension":I
    move/from16 v15, p11

    .local v15, "minDimension":I
    move/from16 v16, p12

    .local v16, "maxDimension":I
    move/from16 v17, p13

    .local v17, "bias":F
    move/from16 v18, p14

    .local v18, "useRatio":Z
    move/from16 v19, p15

    .local v19, "inChain":Z
    move/from16 v20, p16

    .local v20, "matchConstraintDefault":I
    move/from16 v21, p17

    .local v21, "matchMinDimension":I
    move/from16 v22, p18

    .local v22, "matchMaxDimension":I
    move/from16 v23, p19

    .local v23, "matchPercentDimension":F
    move/from16 v24, p20

    .local v24, "applyPosition":Z
    move-object/from16 v43, v5

    move-object/from16 v44, v11

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v43

    move-object/from16 v25, v43

    .line 2613
    .local v25, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v43, v5

    move-object/from16 v44, v12

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v43

    move-object/from16 v26, v43

    .line 2614
    .local v26, "end":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v43, v5

    move-object/from16 v44, v11

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v43

    move-object/from16 v27, v43

    .line 2615
    .local v27, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v43, v5

    move-object/from16 v44, v12

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v43

    move-object/from16 v28, v43

    .line 2617
    .local v28, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v43, v5

    move-object/from16 v0, v43

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    move/from16 v43, v0

    if-eqz v43, :cond_2

    .line 2618
    move-object/from16 v43, v11

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2

    move-object/from16 v43, v12

    .line 2619
    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2

    .line 2620
    move-object/from16 v43, v5

    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v43

    if-eqz v43, :cond_0

    .line 2621
    move-object/from16 v43, v5

    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v43

    move-object/from16 v52, v43

    move-object/from16 v43, v52

    move-object/from16 v44, v52

    move-object/from16 v0, v44

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x1

    add-long v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 2623
    :cond_0
    move-object/from16 v43, v11

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v43

    move-object/from16 v44, v5

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 2624
    move-object/from16 v43, v12

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v43

    move-object/from16 v44, v5

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 2625
    move/from16 v43, v19

    if-nez v43, :cond_1

    move/from16 v43, v6

    if-eqz v43, :cond_1

    .line 2626
    move-object/from16 v43, v5

    move-object/from16 v44, v8

    move-object/from16 v45, v26

    const/16 v46, 0x0

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2628
    .line 2857
    :cond_1
    :goto_0
    return-void

    .line 2631
    :cond_2
    move-object/from16 v43, v5

    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v43

    if-eqz v43, :cond_3

    .line 2632
    move-object/from16 v43, v5

    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v43

    move-object/from16 v52, v43

    move-object/from16 v43, v52

    move-object/from16 v44, v52

    move-object/from16 v0, v44

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x1

    add-long v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 2635
    :cond_3
    move-object/from16 v43, v11

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v43

    move/from16 v29, v43

    .line 2636
    .local v29, "isBeginConnected":Z
    move-object/from16 v43, v12

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v43

    move/from16 v30, v43

    .line 2637
    .local v30, "isEndConnected":Z
    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v43

    move/from16 v31, v43

    .line 2639
    .local v31, "isCenterConnected":Z
    const/16 v43, 0x0

    move/from16 v32, v43

    .line 2641
    .local v32, "variableSize":Z
    const/16 v43, 0x0

    move/from16 v33, v43

    .line 2642
    .local v33, "numConnections":I
    move/from16 v43, v29

    if-eqz v43, :cond_4

    add-int/lit8 v33, v33, 0x1

    .line 2643
    :cond_4
    move/from16 v43, v30

    if-eqz v43, :cond_5

    add-int/lit8 v33, v33, 0x1

    .line 2644
    :cond_5
    move/from16 v43, v31

    if-eqz v43, :cond_6

    add-int/lit8 v33, v33, 0x1

    .line 2646
    :cond_6
    move/from16 v43, v18

    if-eqz v43, :cond_7

    .line 2647
    const/16 v43, 0x3

    move/from16 v20, v43

    .line 2649
    :cond_7
    sget-object v43, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    move-object/from16 v44, v9

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v44

    aget v43, v43, v44

    packed-switch v43, :pswitch_data_0

    .line 2667
    :cond_8
    :goto_1
    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v43, v0

    const/16 v44, 0x8

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_9

    .line 2668
    const/16 v43, 0x0

    move/from16 v14, v43

    .line 2669
    const/16 v43, 0x0

    move/from16 v32, v43

    .line 2673
    :cond_9
    move/from16 v43, v24

    if-eqz v43, :cond_a

    .line 2674
    move/from16 v43, v29

    if-nez v43, :cond_f

    move/from16 v43, v30

    if-nez v43, :cond_f

    move/from16 v43, v31

    if-nez v43, :cond_f

    .line 2675
    move-object/from16 v43, v5

    move-object/from16 v44, v25

    move/from16 v45, v13

    invoke-virtual/range {v43 .. v45}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2682
    :cond_a
    :goto_2
    move/from16 v43, v32

    if-nez v43, :cond_11

    .line 2683
    move/from16 v43, v10

    if-eqz v43, :cond_10

    .line 2684
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v25

    const/16 v46, 0x0

    const/16 v47, 0x3

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    .line 2685
    move/from16 v43, v15

    if-lez v43, :cond_b

    .line 2686
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v25

    move/from16 v46, v15

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2688
    :cond_b
    move/from16 v43, v16

    const v44, 0x7fffffff

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_c

    .line 2689
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v25

    move/from16 v46, v16

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2743
    :cond_c
    :goto_3
    move/from16 v43, v24

    if-eqz v43, :cond_d

    move/from16 v43, v19

    if-eqz v43, :cond_1d

    .line 2749
    :cond_d
    move/from16 v43, v33

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_e

    move/from16 v43, v6

    if-eqz v43, :cond_e

    .line 2750
    move-object/from16 v43, v5

    move-object/from16 v44, v25

    move-object/from16 v45, v7

    const/16 v46, 0x0

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2751
    move-object/from16 v43, v5

    move-object/from16 v44, v8

    move-object/from16 v45, v26

    const/16 v46, 0x0

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2753
    :cond_e
    goto/16 :goto_0

    .line 2651
    :pswitch_0
    const/16 v43, 0x0

    move/from16 v32, v43

    .line 2652
    goto/16 :goto_1

    .line 2654
    :pswitch_1
    const/16 v43, 0x0

    move/from16 v32, v43

    .line 2655
    goto/16 :goto_1

    .line 2657
    :pswitch_2
    const/16 v43, 0x0

    move/from16 v32, v43

    .line 2658
    goto/16 :goto_1

    .line 2660
    :pswitch_3
    const/16 v43, 0x1

    move/from16 v32, v43

    .line 2661
    move/from16 v43, v20

    const/16 v44, 0x4

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_8

    .line 2662
    const/16 v43, 0x0

    move/from16 v32, v43

    goto/16 :goto_1

    .line 2676
    :cond_f
    move/from16 v43, v29

    if-eqz v43, :cond_a

    move/from16 v43, v30

    if-nez v43, :cond_a

    .line 2677
    move-object/from16 v43, v5

    move-object/from16 v44, v25

    move-object/from16 v45, v27

    move-object/from16 v46, v11

    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v46

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    goto/16 :goto_2

    .line 2692
    :cond_10
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v25

    move/from16 v46, v14

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    goto/16 :goto_3

    .line 2695
    :cond_11
    move/from16 v43, v21

    const/16 v44, -0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_12

    .line 2696
    move/from16 v43, v14

    move/from16 v21, v43

    .line 2698
    :cond_12
    move/from16 v43, v22

    const/16 v44, -0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_13

    .line 2699
    move/from16 v43, v14

    move/from16 v22, v43

    .line 2702
    :cond_13
    move/from16 v43, v21

    if-lez v43, :cond_14

    .line 2703
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v25

    move/from16 v46, v21

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2704
    move/from16 v43, v14

    move/from16 v44, v21

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v14, v43

    .line 2706
    :cond_14
    move/from16 v43, v22

    if-lez v43, :cond_15

    .line 2707
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v25

    move/from16 v46, v22

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2708
    move/from16 v43, v14

    move/from16 v44, v22

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v14, v43

    .line 2710
    :cond_15
    move/from16 v43, v20

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_1a

    .line 2711
    move/from16 v43, v6

    if-eqz v43, :cond_18

    .line 2712
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v25

    move/from16 v46, v14

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    .line 2733
    :cond_16
    :goto_4
    move/from16 v43, v32

    if-eqz v43, :cond_c

    move/from16 v43, v33

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_c

    move/from16 v43, v18

    if-nez v43, :cond_c

    .line 2734
    const/16 v43, 0x0

    move/from16 v32, v43

    .line 2735
    move/from16 v43, v21

    move/from16 v44, v14

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v34, v43

    .line 2736
    .local v34, "d":I
    move/from16 v43, v22

    if-lez v43, :cond_17

    .line 2737
    move/from16 v43, v22

    move/from16 v44, v34

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v34, v43

    .line 2739
    :cond_17
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v25

    move/from16 v46, v34

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    goto/16 :goto_3

    .line 2713
    .end local v34    # "d":I
    :cond_18
    move/from16 v43, v19

    if-eqz v43, :cond_19

    .line 2714
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v25

    move/from16 v46, v14

    const/16 v47, 0x4

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    goto :goto_4

    .line 2716
    :cond_19
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v25

    move/from16 v46, v14

    const/16 v47, 0x1

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    goto :goto_4

    .line 2718
    :cond_1a
    move/from16 v43, v20

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_16

    .line 2719
    const/16 v43, 0x0

    move-object/from16 v34, v43

    .line 2720
    .local v34, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v43, 0x0

    move-object/from16 v35, v43

    .line 2721
    .local v35, "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v43, v11

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v43

    sget-object v44, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_1b

    move-object/from16 v43, v11

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v43

    sget-object v44, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_1c

    .line 2723
    :cond_1b
    move-object/from16 v43, v5

    move-object/from16 v44, v4

    move-object/from16 v0, v44

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v44, v0

    sget-object v45, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v44 .. v45}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v43

    move-object/from16 v34, v43

    .line 2724
    move-object/from16 v43, v5

    move-object/from16 v44, v4

    move-object/from16 v0, v44

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v44, v0

    sget-object v45, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v44 .. v45}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v43

    move-object/from16 v35, v43

    .line 2729
    :goto_5
    move-object/from16 v43, v5

    move-object/from16 v44, v5

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v44

    move-object/from16 v45, v26

    move-object/from16 v46, v25

    move-object/from16 v47, v35

    move-object/from16 v48, v34

    move/from16 v49, v23

    invoke-virtual/range {v44 .. v49}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 2730
    const/16 v43, 0x0

    move/from16 v32, v43

    goto/16 :goto_4

    .line 2726
    :cond_1c
    move-object/from16 v43, v5

    move-object/from16 v44, v4

    move-object/from16 v0, v44

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v44, v0

    sget-object v45, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v44 .. v45}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v43

    move-object/from16 v34, v43

    .line 2727
    move-object/from16 v43, v5

    move-object/from16 v44, v4

    move-object/from16 v0, v44

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v44, v0

    sget-object v45, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v44 .. v45}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v43

    move-object/from16 v35, v43

    goto :goto_5

    .line 2758
    .end local v34    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v35    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1d
    move/from16 v43, v29

    if-nez v43, :cond_20

    move/from16 v43, v30

    if-nez v43, :cond_20

    move/from16 v43, v31

    if-nez v43, :cond_20

    .line 2760
    move/from16 v43, v6

    if-eqz v43, :cond_1e

    .line 2761
    move-object/from16 v43, v5

    move-object/from16 v44, v8

    move-object/from16 v45, v26

    const/16 v46, 0x0

    const/16 v47, 0x5

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2854
    :cond_1e
    :goto_6
    move/from16 v43, v6

    if-eqz v43, :cond_1f

    .line 2855
    move-object/from16 v43, v5

    move-object/from16 v44, v8

    move-object/from16 v45, v26

    const/16 v46, 0x0

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2857
    :cond_1f
    goto/16 :goto_0

    .line 2763
    :cond_20
    move/from16 v43, v29

    if-eqz v43, :cond_21

    move/from16 v43, v30

    if-nez v43, :cond_21

    .line 2765
    move/from16 v43, v6

    if-eqz v43, :cond_1e

    .line 2766
    move-object/from16 v43, v5

    move-object/from16 v44, v8

    move-object/from16 v45, v26

    const/16 v46, 0x0

    const/16 v47, 0x5

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_6

    .line 2768
    :cond_21
    move/from16 v43, v29

    if-nez v43, :cond_22

    move/from16 v43, v30

    if-eqz v43, :cond_22

    .line 2769
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v28

    move-object/from16 v46, v12

    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v46

    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v46, v0

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    .line 2770
    move/from16 v43, v6

    if-eqz v43, :cond_1e

    .line 2771
    move-object/from16 v43, v5

    move-object/from16 v44, v25

    move-object/from16 v45, v7

    const/16 v46, 0x0

    const/16 v47, 0x5

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_6

    .line 2773
    :cond_22
    move/from16 v43, v29

    if-eqz v43, :cond_1e

    move/from16 v43, v30

    if-eqz v43, :cond_1e

    .line 2777
    const/16 v43, 0x0

    move/from16 v34, v43

    .line 2778
    .local v34, "applyBoundsCheck":Z
    const/16 v43, 0x0

    move/from16 v35, v43

    .line 2779
    .local v35, "applyCentering":Z
    const/16 v43, 0x5

    move/from16 v36, v43

    .line 2781
    .local v36, "centeringStrength":I
    move/from16 v43, v32

    if-eqz v43, :cond_33

    .line 2783
    move/from16 v43, v6

    if-eqz v43, :cond_23

    move/from16 v43, v15

    if-nez v43, :cond_23

    .line 2784
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v25

    const/16 v46, 0x0

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2787
    :cond_23
    move/from16 v43, v20

    if-nez v43, :cond_30

    .line 2788
    const/16 v43, 0x6

    move/from16 v37, v43

    .line 2789
    .local v37, "strength":I
    move/from16 v43, v22

    if-gtz v43, :cond_24

    move/from16 v43, v21

    if-lez v43, :cond_25

    .line 2790
    :cond_24
    const/16 v43, 0x4

    move/from16 v37, v43

    .line 2791
    const/16 v43, 0x1

    move/from16 v34, v43

    .line 2793
    :cond_25
    move-object/from16 v43, v5

    move-object/from16 v44, v25

    move-object/from16 v45, v27

    move-object/from16 v46, v11

    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v46

    move/from16 v47, v37

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    .line 2794
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v28

    move-object/from16 v46, v12

    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v46

    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v46, v0

    move/from16 v47, v37

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    .line 2795
    move/from16 v43, v22

    if-gtz v43, :cond_26

    move/from16 v43, v21

    if-lez v43, :cond_27

    .line 2796
    :cond_26
    const/16 v43, 0x1

    move/from16 v35, v43

    .line 2798
    .line 2819
    .end local v37    # "strength":I
    :cond_27
    :goto_7
    const/16 v43, 0x5

    move/from16 v37, v43

    .line 2820
    .local v37, "startStrength":I
    const/16 v43, 0x5

    move/from16 v38, v43

    .line 2821
    .local v38, "endStrength":I
    move/from16 v43, v6

    move/from16 v39, v43

    .line 2822
    .local v39, "applyStartConstraint":Z
    move/from16 v43, v6

    move/from16 v40, v43

    .line 2823
    .local v40, "applyEndConstraint":Z
    move/from16 v43, v35

    if-eqz v43, :cond_28

    .line 2824
    move-object/from16 v43, v5

    move-object/from16 v44, v25

    move-object/from16 v45, v27

    move-object/from16 v46, v11

    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v46

    move/from16 v47, v17

    move-object/from16 v48, v28

    move-object/from16 v49, v26

    move-object/from16 v50, v12

    .line 2825
    invoke-virtual/range {v50 .. v50}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v50

    move/from16 v51, v36

    .line 2824
    invoke-virtual/range {v43 .. v51}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2826
    move-object/from16 v43, v11

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v43, v0

    move/from16 v41, v43

    .line 2827
    .local v41, "isBeginAnchorBarrier":Z
    move-object/from16 v43, v12

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v43, v0

    move/from16 v42, v43

    .line 2829
    .local v42, "isEndAnchorBarrier":Z
    move/from16 v43, v41

    if-eqz v43, :cond_34

    move/from16 v43, v42

    if-nez v43, :cond_34

    .line 2830
    const/16 v43, 0x6

    move/from16 v38, v43

    .line 2831
    const/16 v43, 0x1

    move/from16 v40, v43

    .line 2837
    .end local v41    # "isBeginAnchorBarrier":Z
    .end local v42    # "isEndAnchorBarrier":Z
    :cond_28
    :goto_8
    move/from16 v43, v34

    if-eqz v43, :cond_29

    .line 2838
    const/16 v43, 0x6

    move/from16 v37, v43

    .line 2839
    const/16 v43, 0x6

    move/from16 v38, v43

    .line 2842
    :cond_29
    move/from16 v43, v32

    if-nez v43, :cond_2a

    move/from16 v43, v39

    if-nez v43, :cond_2b

    :cond_2a
    move/from16 v43, v34

    if-eqz v43, :cond_2c

    .line 2843
    :cond_2b
    move-object/from16 v43, v5

    move-object/from16 v44, v25

    move-object/from16 v45, v27

    move-object/from16 v46, v11

    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v46

    move/from16 v47, v37

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2845
    :cond_2c
    move/from16 v43, v32

    if-nez v43, :cond_2d

    move/from16 v43, v40

    if-nez v43, :cond_2e

    :cond_2d
    move/from16 v43, v34

    if-eqz v43, :cond_2f

    .line 2846
    :cond_2e
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v28

    move-object/from16 v46, v12

    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v46

    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v46, v0

    move/from16 v47, v38

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2849
    :cond_2f
    move/from16 v43, v6

    if-eqz v43, :cond_1e

    .line 2850
    move-object/from16 v43, v5

    move-object/from16 v44, v25

    move-object/from16 v45, v7

    const/16 v46, 0x0

    const/16 v47, 0x6

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_6

    .line 2798
    .end local v37    # "startStrength":I
    .end local v38    # "endStrength":I
    .end local v39    # "applyStartConstraint":Z
    .end local v40    # "applyEndConstraint":Z
    :cond_30
    move/from16 v43, v20

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_31

    .line 2799
    const/16 v43, 0x1

    move/from16 v35, v43

    .line 2800
    const/16 v43, 0x1

    move/from16 v34, v43

    .line 2801
    const/16 v43, 0x6

    move/from16 v36, v43

    goto/16 :goto_7

    .line 2802
    :cond_31
    move/from16 v43, v20

    const/16 v44, 0x3

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_27

    .line 2803
    const/16 v43, 0x1

    move/from16 v35, v43

    .line 2804
    const/16 v43, 0x1

    move/from16 v34, v43

    .line 2805
    const/16 v43, 0x4

    move/from16 v37, v43

    .line 2806
    .local v37, "strength":I
    move/from16 v43, v18

    if-nez v43, :cond_32

    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v43, v0

    const/16 v44, -0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_32

    move/from16 v43, v22

    if-gtz v43, :cond_32

    .line 2809
    const/16 v43, 0x6

    move/from16 v37, v43

    .line 2811
    :cond_32
    move-object/from16 v43, v5

    move-object/from16 v44, v25

    move-object/from16 v45, v27

    move-object/from16 v46, v11

    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v46

    move/from16 v47, v37

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    .line 2812
    move-object/from16 v43, v5

    move-object/from16 v44, v26

    move-object/from16 v45, v28

    move-object/from16 v46, v12

    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v46

    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v46, v0

    move/from16 v47, v37

    invoke-virtual/range {v43 .. v47}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v43

    .line 2813
    goto/16 :goto_7

    .line 2816
    .end local v37    # "strength":I
    :cond_33
    const/16 v43, 0x1

    move/from16 v35, v43

    goto/16 :goto_7

    .line 2832
    .local v37, "startStrength":I
    .restart local v38    # "endStrength":I
    .restart local v39    # "applyStartConstraint":Z
    .restart local v40    # "applyEndConstraint":Z
    .restart local v41    # "isBeginAnchorBarrier":Z
    .restart local v42    # "isEndAnchorBarrier":Z
    :cond_34
    move/from16 v43, v41

    if-nez v43, :cond_28

    move/from16 v43, v42

    if-eqz v43, :cond_28

    .line 2833
    const/16 v43, 0x6

    move/from16 v37, v43

    .line 2834
    const/16 v43, 0x1

    move/from16 v39, v43

    goto/16 :goto_8

    .line 2649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isChainHead(I)Z
    .locals 7

    .prologue
    .line 2313
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "orientation":I
    move v3, v1

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v2, v3

    .line 2314
    .local v2, "offset":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v5, v2

    aget-object v4, v4, v5

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 48

    .prologue
    .line 2337
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v3, p1

    .local v3, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    move-object/from16 v4, v27

    .line 2338
    .local v4, "left":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    move-object/from16 v5, v27

    .line 2339
    .local v5, "right":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    move-object/from16 v6, v27

    .line 2340
    .local v6, "top":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    move-object/from16 v7, v27

    .line 2341
    .local v7, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    move-object/from16 v8, v27

    .line 2343
    .local v8, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v27, 0x0

    move/from16 v9, v27

    .line 2344
    .local v9, "inHorizontalChain":Z
    const/16 v27, 0x0

    move/from16 v10, v27

    .line 2345
    .local v10, "inVerticalChain":Z
    const/16 v27, 0x0

    move/from16 v11, v27

    .line 2346
    .local v11, "horizontalParentWrapContent":Z
    const/16 v27, 0x0

    move/from16 v12, v27

    .line 2348
    .local v12, "verticalParentWrapContent":Z
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 2349
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_a

    const/16 v27, 0x1

    :goto_0
    move/from16 v11, v27

    .line 2350
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_c

    const/16 v27, 0x1

    :goto_1
    move/from16 v12, v27

    .line 2353
    move-object/from16 v27, v2

    const/16 v28, 0x0

    invoke-direct/range {v27 .. v28}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 2354
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v0

    check-cast v27, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v28, v2

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 2355
    const/16 v27, 0x1

    move/from16 v9, v27

    .line 2361
    :goto_2
    move-object/from16 v27, v2

    const/16 v28, 0x1

    invoke-direct/range {v27 .. v28}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 2362
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v0

    check-cast v27, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v28, v2

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 2363
    const/16 v27, 0x1

    move/from16 v10, v27

    .line 2368
    :goto_3
    move/from16 v27, v11

    if-eqz v27, :cond_0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v27, v0

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 2370
    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    move-object/from16 v13, v27

    .line 2371
    .local v13, "parentRight":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v27, v3

    move-object/from16 v28, v13

    move-object/from16 v29, v5

    const/16 v30, 0x0

    const/16 v31, 0x1

    invoke-virtual/range {v27 .. v31}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2374
    .end local v13    # "parentRight":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_0
    move/from16 v27, v12

    if-eqz v27, :cond_1

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v27, v0

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 2376
    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    move-object/from16 v13, v27

    .line 2377
    .local v13, "parentBottom":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v27, v3

    move-object/from16 v28, v13

    move-object/from16 v29, v7

    const/16 v30, 0x0

    const/16 v31, 0x1

    invoke-virtual/range {v27 .. v31}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2381
    .end local v13    # "parentBottom":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move/from16 v27, v0

    move/from16 v13, v27

    .line 2382
    .local v13, "width":I
    move/from16 v27, v13

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 2383
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v27, v0

    move/from16 v13, v27

    .line 2385
    :cond_2
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move/from16 v27, v0

    move/from16 v14, v27

    .line 2386
    .local v14, "height":I
    move/from16 v27, v14

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 2387
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v27, v0

    move/from16 v14, v27

    .line 2391
    :cond_3
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_10

    const/16 v27, 0x1

    :goto_4
    move/from16 v15, v27

    .line 2393
    .local v15, "horizontalDimensionFixed":Z
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_11

    const/16 v27, 0x1

    :goto_5
    move/from16 v16, v27

    .line 2398
    .local v16, "verticalDimensionFixed":Z
    const/16 v27, 0x0

    move/from16 v17, v27

    .line 2399
    .local v17, "useRatio":Z
    move-object/from16 v27, v2

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2400
    move-object/from16 v27, v2

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2402
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v27, v0

    move/from16 v18, v27

    .line 2403
    .local v18, "matchConstraintDefaultWidth":I
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v27, v0

    move/from16 v19, v27

    .line 2405
    .local v19, "matchConstraintDefaultHeight":I
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_6

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v27, v0

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 2406
    const/16 v27, 0x1

    move/from16 v17, v27

    .line 2407
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_4

    move/from16 v27, v18

    if-nez v27, :cond_4

    .line 2409
    const/16 v27, 0x3

    move/from16 v18, v27

    .line 2411
    :cond_4
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_5

    move/from16 v27, v19

    if-nez v27, :cond_5

    .line 2413
    const/16 v27, 0x3

    move/from16 v19, v27

    .line 2416
    :cond_5
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_12

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_12

    move/from16 v27, v18

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    move/from16 v27, v19

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 2420
    move-object/from16 v27, v2

    move/from16 v28, v11

    move/from16 v29, v12

    move/from16 v30, v15

    move/from16 v31, v16

    invoke-virtual/range {v27 .. v31}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    .line 2444
    :cond_6
    :goto_6
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v29, v18

    aput v29, v27, v28

    .line 2445
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v29, v19

    aput v29, v27, v28

    .line 2447
    move/from16 v27, v17

    if-eqz v27, :cond_15

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v27, v0

    if-eqz v27, :cond_7

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    :cond_7
    const/16 v27, 0x1

    :goto_7
    move/from16 v20, v27

    .line 2451
    .local v20, "useHorizontalRatio":Z
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_16

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move/from16 v27, v0

    if-eqz v27, :cond_16

    const/16 v27, 0x1

    :goto_8
    move/from16 v21, v27

    .line 2454
    .local v21, "wrapContent":Z
    const/16 v27, 0x1

    move/from16 v22, v27

    .line 2455
    .local v22, "applyPosition":Z
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 2456
    const/16 v27, 0x0

    move/from16 v22, v27

    .line 2459
    :cond_8
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    .line 2460
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_17

    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    :goto_9
    move-object/from16 v23, v27

    .line 2461
    .local v23, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_18

    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    :goto_a
    move-object/from16 v24, v27

    .line 2462
    .local v24, "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v29, v11

    move-object/from16 v30, v24

    move-object/from16 v31, v23

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v32, v32, v33

    move/from16 v33, v21

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move/from16 v36, v0

    move/from16 v37, v13

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget v39, v39, v40

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v40, v0

    move/from16 v41, v20

    move/from16 v42, v9

    move/from16 v43, v18

    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v44, v0

    move-object/from16 v45, v2

    move-object/from16 v0, v45

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v45, v0

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v46, v0

    move/from16 v47, v22

    invoke-direct/range {v27 .. v47}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    .line 2468
    .end local v23    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v24    # "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_9
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    .line 2475
    .line 2522
    :goto_b
    return-void

    .line 2349
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v15    # "horizontalDimensionFixed":Z
    .end local v16    # "verticalDimensionFixed":Z
    .end local v17    # "useRatio":Z
    .end local v18    # "matchConstraintDefaultWidth":I
    .end local v19    # "matchConstraintDefaultHeight":I
    .end local v20    # "useHorizontalRatio":Z
    .end local v21    # "wrapContent":Z
    .end local v22    # "applyPosition":Z
    :cond_a
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 2350
    :cond_c
    const/16 v27, 0x0

    goto/16 :goto_1

    :cond_d
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 2357
    :cond_e
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v27

    move/from16 v9, v27

    goto/16 :goto_2

    .line 2365
    :cond_f
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v27

    move/from16 v10, v27

    goto/16 :goto_3

    .line 2391
    .restart local v13    # "width":I
    .restart local v14    # "height":I
    :cond_10
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 2393
    .restart local v15    # "horizontalDimensionFixed":Z
    :cond_11
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 2421
    .restart local v16    # "verticalDimensionFixed":Z
    .restart local v17    # "useRatio":Z
    .restart local v18    # "matchConstraintDefaultWidth":I
    .restart local v19    # "matchConstraintDefaultHeight":I
    :cond_12
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_13

    move/from16 v27, v18

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 2423
    move-object/from16 v27, v2

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2424
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v13, v27

    .line 2425
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 2426
    const/16 v27, 0x4

    move/from16 v18, v27

    .line 2427
    const/16 v27, 0x0

    move/from16 v17, v27

    goto/16 :goto_6

    .line 2429
    :cond_13
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    move/from16 v27, v19

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 2431
    move-object/from16 v27, v2

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2432
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 2434
    move-object/from16 v27, v2

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2436
    :cond_14
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v14, v27

    .line 2437
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 2438
    const/16 v27, 0x4

    move/from16 v19, v27

    .line 2439
    const/16 v27, 0x0

    move/from16 v17, v27

    goto/16 :goto_6

    .line 2447
    :cond_15
    const/16 v27, 0x0

    goto/16 :goto_7

    .line 2451
    .restart local v20    # "useHorizontalRatio":Z
    :cond_16
    const/16 v27, 0x0

    goto/16 :goto_8

    .line 2460
    .restart local v21    # "wrapContent":Z
    .restart local v22    # "applyPosition":Z
    :cond_17
    const/16 v27, 0x0

    goto/16 :goto_9

    .line 2461
    .restart local v23    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_18
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 2478
    .end local v23    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_19
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    sget-object v28, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1e

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move/from16 v27, v0

    if-eqz v27, :cond_1e

    const/16 v27, 0x1

    :goto_c
    move/from16 v21, v27

    .line 2481
    move/from16 v27, v17

    if-eqz v27, :cond_1f

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1a

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1f

    :cond_1a
    const/16 v27, 0x1

    :goto_d
    move/from16 v23, v27

    .line 2484
    .local v23, "useVerticalRatio":Z
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    move/from16 v27, v0

    if-lez v27, :cond_1b

    .line 2485
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_20

    .line 2486
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v27

    move-object/from16 v28, v3

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 2497
    :cond_1b
    :goto_e
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_21

    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    :goto_f
    move-object/from16 v24, v27

    .line 2498
    .local v24, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_22

    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    :goto_10
    move-object/from16 v25, v27

    .line 2499
    .local v25, "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v29, v12

    move-object/from16 v30, v25

    move-object/from16 v31, v24

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v32, v32, v33

    move/from16 v33, v21

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v36, v0

    move/from16 v37, v14

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    move-object/from16 v39, v0

    const/16 v40, 0x1

    aget v39, v39, v40

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v40, v0

    move/from16 v41, v23

    move/from16 v42, v10

    move/from16 v43, v19

    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v44, v0

    move-object/from16 v45, v2

    move-object/from16 v0, v45

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v45, v0

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v46, v0

    move/from16 v47, v22

    invoke-direct/range {v27 .. v47}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    .line 2504
    move/from16 v27, v17

    if-eqz v27, :cond_1c

    .line 2505
    const/16 v27, 0x6

    move/from16 v26, v27

    .line 2506
    .local v26, "strength":I
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_23

    .line 2507
    move-object/from16 v27, v3

    move-object/from16 v28, v7

    move-object/from16 v29, v6

    move-object/from16 v30, v5

    move-object/from16 v31, v4

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v32, v0

    move/from16 v33, v26

    invoke-virtual/range {v27 .. v33}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    .line 2513
    .end local v26    # "strength":I
    :cond_1c
    :goto_11
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 2514
    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v29

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    move/from16 v30, v0

    const/high16 v31, 0x42b40000    # 90.0f

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v31

    invoke-virtual/range {v27 .. v31}, Landroidx/constraintlayout/solver/LinearSystem;->addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V

    .line 2522
    :cond_1d
    goto/16 :goto_b

    .line 2478
    .end local v23    # "useVerticalRatio":Z
    .end local v24    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_c

    .line 2481
    :cond_1f
    const/16 v27, 0x0

    goto/16 :goto_d

    .line 2488
    .restart local v23    # "useVerticalRatio":Z
    :cond_20
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v6

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v30

    const/16 v31, 0x6

    invoke-virtual/range {v27 .. v31}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v27

    .line 2489
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 2490
    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v27

    move-object/from16 v24, v27

    .line 2491
    .local v24, "baselineTarget":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v27, 0x0

    move/from16 v25, v27

    .line 2492
    .local v25, "baselineMargin":I
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v24

    move/from16 v30, v25

    const/16 v31, 0x6

    invoke-virtual/range {v27 .. v31}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v27

    .line 2493
    const/16 v27, 0x0

    move/from16 v22, v27

    goto/16 :goto_e

    .line 2497
    .end local v24    # "baselineTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "baselineMargin":I
    :cond_21
    const/16 v27, 0x0

    goto/16 :goto_f

    .line 2498
    .local v24, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_22
    const/16 v27, 0x0

    goto/16 :goto_10

    .line 2509
    .local v25, "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v26    # "strength":I
    :cond_23
    move-object/from16 v27, v3

    move-object/from16 v28, v5

    move-object/from16 v29, v4

    move-object/from16 v30, v7

    move-object/from16 v31, v6

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v32, v0

    move/from16 v33, v26

    invoke-virtual/range {v27 .. v33}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    goto/16 :goto_11
.end method

.method public allowedInBarrier()Z
    .locals 3

    .prologue
    .line 1677
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public analyze(I)V
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "optimizationLevel":I
    move v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Landroidx/constraintlayout/solver/widgets/Optimizer;->analyze(ILandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 354
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V
    .locals 10

    .prologue
    .line 1759
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "constraintFrom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move-object v2, p2

    .local v2, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v3, p3

    .local v3, "constraintTo":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 1760
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 11

    .prologue
    .line 1744
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "constraintFrom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move-object v2, p2

    .local v2, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v3, p3

    .local v3, "constraintTo":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move v4, p4

    .local v4, "margin":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 1746
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V
    .locals 13

    .prologue
    .line 1776
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "constraintFrom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move-object v2, p2

    .local v2, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v3, p3

    .local v3, "constraintTo":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move/from16 v4, p4

    .local v4, "margin":I
    move-object/from16 v5, p5

    .local v5, "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1778
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 21

    .prologue
    .line 1794
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v1, p1

    .local v1, "constraintFrom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move-object/from16 v2, p2

    .local v2, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v3, p3

    .local v3, "constraintTo":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move/from16 v4, p4

    .local v4, "margin":I
    move-object/from16 v5, p5

    .local v5, "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    move/from16 v6, p6

    .local v6, "creator":I
    move-object v14, v1

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_d

    .line 1797
    move-object v14, v3

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_9

    .line 1798
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1799
    .local v7, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1800
    .local v8, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1801
    .local v9, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1802
    .local v10, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v14, 0x0

    move v11, v14

    .line 1803
    .local v11, "centerX":Z
    const/4 v14, 0x0

    move v12, v14

    .line 1804
    .local v12, "centerY":Z
    move-object v14, v7

    if-eqz v14, :cond_0

    move-object v14, v7

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    move-object v14, v8

    if-eqz v14, :cond_5

    move-object v14, v8

    .line 1805
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1814
    :cond_1
    :goto_0
    move-object v14, v9

    if-eqz v14, :cond_2

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    move-object v14, v10

    if-eqz v14, :cond_6

    move-object v14, v10

    .line 1815
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1824
    :cond_3
    :goto_1
    move v14, v11

    if-eqz v14, :cond_7

    move v14, v12

    if-eqz v14, :cond_7

    .line 1825
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v13, v14

    .line 1826
    .local v13, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v13

    move-object v15, v2

    sget-object v16, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v15 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1827
    .line 1834
    .line 1963
    .end local v7    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v10    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v11    # "centerX":Z
    .end local v12    # "centerY":Z
    .end local v13    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4
    :goto_2
    return-void

    .line 1808
    .restart local v7    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v8    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v9    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v10    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v11    # "centerX":Z
    .restart local v12    # "centerY":Z
    :cond_5
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    sget-object v17, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1810
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    sget-object v17, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1812
    const/4 v14, 0x1

    move v11, v14

    goto :goto_0

    .line 1818
    :cond_6
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    sget-object v17, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1820
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    sget-object v17, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1822
    const/4 v14, 0x1

    move v12, v14

    goto :goto_1

    .line 1827
    :cond_7
    move v14, v11

    if-eqz v14, :cond_8

    .line 1828
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v13, v14

    .line 1829
    .restart local v13    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v13

    move-object v15, v2

    sget-object v16, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v15 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1830
    goto :goto_2

    .end local v13    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_8
    move v14, v12

    if-eqz v14, :cond_4

    .line 1831
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v13, v14

    .line 1832
    .restart local v13    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v13

    move-object v15, v2

    sget-object v16, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v15 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    goto :goto_2

    .line 1834
    .end local v7    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v10    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v11    # "centerX":Z
    .end local v12    # "centerY":Z
    .end local v13    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_9
    move-object v14, v3

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_a

    move-object v14, v3

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_b

    .line 1836
    :cond_a
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1838
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1840
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1841
    .local v7, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v7

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1842
    goto/16 :goto_2

    .end local v7    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_b
    move-object v14, v3

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_c

    move-object v14, v3

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_4

    .line 1844
    :cond_c
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1846
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1848
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1849
    .restart local v7    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v7

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1850
    goto/16 :goto_2

    .line 1851
    .end local v7    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_d
    move-object v14, v1

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_f

    move-object v14, v3

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_e

    move-object v14, v3

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_f

    .line 1854
    :cond_e
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1855
    .local v7, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v2

    move-object v15, v3

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1856
    .local v8, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1857
    .local v9, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v7

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1858
    move-object v14, v9

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1859
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1860
    .local v10, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v10

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1861
    goto/16 :goto_2

    .end local v7    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v10    # "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_f
    move-object v14, v1

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_11

    move-object v14, v3

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_10

    move-object v14, v3

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_11

    .line 1864
    :cond_10
    move-object v14, v2

    move-object v15, v3

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1865
    .local v7, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1866
    .local v8, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v8

    move-object v15, v7

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1867
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1868
    .local v9, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v9

    move-object v15, v7

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1869
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1870
    .local v10, "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v10

    move-object v15, v7

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1871
    goto/16 :goto_2

    .end local v7    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v10    # "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_11
    move-object v14, v1

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_12

    move-object v14, v3

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_12

    .line 1874
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1875
    .local v7, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1876
    .local v8, "leftTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v7

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1877
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1878
    .local v9, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1879
    .local v10, "rightTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v9

    move-object v15, v10

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1880
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v11, v14

    .line 1881
    .local v11, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v11

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1882
    goto/16 :goto_2

    .end local v7    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "leftTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v10    # "rightTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v11    # "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_12
    move-object v14, v1

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_13

    move-object v14, v3

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_13

    .line 1885
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1886
    .local v7, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1887
    .local v8, "topTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v7

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1888
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1889
    .local v9, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1890
    .local v10, "bottomTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v9

    move-object v15, v10

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1891
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v11, v14

    .line 1892
    .local v11, "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v11

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1893
    goto/16 :goto_2

    .line 1894
    .end local v7    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "topTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v10    # "bottomTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v11    # "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_13
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1895
    .local v7, "fromAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v2

    move-object v15, v3

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1896
    .local v8, "toAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v7

    move-object v15, v8

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1899
    move-object v14, v1

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_17

    .line 1900
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1901
    .local v9, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1902
    .local v10, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v9

    if-eqz v14, :cond_14

    .line 1903
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1905
    :cond_14
    move-object v14, v10

    if-eqz v14, :cond_15

    .line 1906
    move-object v14, v10

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1908
    :cond_15
    const/4 v14, 0x0

    move v4, v14

    .line 1959
    .end local v9    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v10    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_16
    :goto_3
    move-object v14, v7

    move-object v15, v8

    move/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)Z

    move-result v14

    .line 1960
    move-object v14, v8

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connectedTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    goto/16 :goto_2

    .line 1909
    :cond_17
    move-object v14, v1

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_18

    move-object v14, v1

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_1c

    .line 1911
    :cond_18
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1912
    .local v9, "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v9

    if-eqz v14, :cond_19

    .line 1913
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1915
    :cond_19
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1916
    .local v10, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v10

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v15, v8

    if-eq v14, v15, :cond_1a

    .line 1917
    move-object v14, v10

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1919
    :cond_1a
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v11, v14

    .line 1920
    .local v11, "opposite":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v12, v14

    .line 1921
    .local v12, "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v12

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 1922
    move-object v14, v11

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1923
    move-object v14, v12

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1935
    :cond_1b
    goto :goto_3

    .end local v9    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v10    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v11    # "opposite":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v12    # "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1c
    move-object v14, v1

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_1d

    move-object v14, v1

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_16

    .line 1937
    :cond_1d
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1938
    .local v9, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v15, v8

    if-eq v14, v15, :cond_1e

    .line 1939
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1941
    :cond_1e
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1942
    .local v10, "opposite":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v11, v14

    .line 1943
    .local v11, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v11

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1944
    move-object v14, v10

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1945
    move-object v14, v11

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_3
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 10

    .prologue
    .line 1723
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "from":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v2, p2

    .local v2, "to":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move v3, p3

    .local v3, "margin":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1724
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)V
    .locals 11

    .prologue
    .line 1719
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "from":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v2, p2

    .local v2, "to":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move v3, p3

    .local v3, "margin":I
    move v4, p4

    .local v4, "creator":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1720
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 13

    .prologue
    .line 1728
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "from":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v2, p2

    .local v2, "to":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v3, p3

    .local v3, "margin":I
    move-object/from16 v4, p4

    .local v4, "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    move/from16 v5, p5

    .local v5, "creator":I
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    move-object v7, v0

    if-ne v6, v7, :cond_0

    .line 1729
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v9

    move v10, v3

    move-object v11, v4

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1731
    :cond_0
    return-void
.end method

.method public connectCircularConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 10

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v2, p2

    .local v2, "angle":F
    move v3, p3

    .local v3, "radius":I
    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v6, v1

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 607
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 608
    return-void
.end method

.method public connectedTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 0
    .param p1, "source"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .prologue
    .line 1691
    return-void
.end method

.method public createObjectVariables(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 9

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v2, v7

    .line 701
    .local v2, "left":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v3, v7

    .line 702
    .local v3, "top":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v4, v7

    .line 703
    .local v4, "right":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v5, v7

    .line 704
    .local v5, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v7, :cond_0

    .line 705
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v6, v7

    .line 707
    :cond_0
    return-void
.end method

.method public disconnectUnlockedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 8

    .prologue
    .line 2115
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 2116
    .local v2, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .local v4, "anchorsSize":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 2117
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v6

    .line 2118
    .local v5, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    move-object v7, v1

    if-ne v6, v7, :cond_0

    move-object v6, v5

    .line 2119
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 2120
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2116
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2123
    .end local v5    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1
    return-void
.end method

.method public disconnectWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 8

    .prologue
    .line 2100
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 2101
    .local v2, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .local v4, "anchorsSize":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 2102
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v6

    .line 2103
    .local v5, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    move-object v7, v1

    if-ne v6, v7, :cond_0

    .line 2104
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2101
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2107
    .end local v5    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1
    return-void
.end method

.method public forceUpdateDrawPosition()V
    .locals 8

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move v1, v5

    .line 1147
    .local v1, "left":I
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move v2, v5

    .line 1148
    .local v2, "top":I
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v5, v6

    move v3, v5

    .line 1149
    .local v3, "right":I
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v5, v6

    move v4, v5

    .line 1150
    .local v4, "bottom":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1151
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1152
    move-object v5, v0

    move v6, v3

    move v7, v1

    sub-int/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 1153
    move-object v5, v0

    move v6, v4

    move v7, v2

    sub-int/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 1154
    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 6

    .prologue
    .line 2132
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "anchorType":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2160
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2134
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    .line 2158
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return-object v0

    .line 2137
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 2140
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 2143
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 2146
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 2149
    :pswitch_5
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 2152
    :pswitch_6
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 2155
    :pswitch_7
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 2158
    :pswitch_8
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 2132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1050
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0
.end method

.method public getBaselineDistance()I
    .locals 2

    .prologue
    .line 1031
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getBiasPercent(I)F
    .locals 4

    .prologue
    .line 1007
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "orientation":I
    move v2, v1

    if-nez v2, :cond_0

    .line 1008
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move v0, v2

    .line 1012
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .line 1009
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1010
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move v0, v2

    goto :goto_0

    .line 1012
    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    move v0, v2

    goto :goto_0
.end method

.method public getBottom()I
    .locals 3

    .prologue
    .line 976
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0
.end method

.method public getContainerItemSkip()I
    .locals 2

    .prologue
    .line 1612
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0
.end method

.method public getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 4

    .prologue
    .line 2188
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "orientation":I
    move v2, v1

    if-nez v2, :cond_0

    .line 2189
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    move-object v0, v2

    .line 2193
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return-object v0

    .line 2190
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2191
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 2193
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getDimensionRatio()F
    .locals 2

    .prologue
    .line 1359
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 2

    .prologue
    .line 1368
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getDrawBottom()I
    .locals 3

    .prologue
    .line 893
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getDrawHeight()I
    .locals 2

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getDrawRight()I
    .locals 3

    .prologue
    .line 902
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getDrawWidth()I
    .locals 2

    .prologue
    .line 880
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getDrawX()I
    .locals 3

    .prologue
    .line 867
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getDrawY()I
    .locals 3

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 830
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 831
    const/4 v1, 0x0

    move v0, v1

    .line 833
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move v0, v1

    goto :goto_0
.end method

.method public getHorizontalBiasPercent()F
    .locals 2

    .prologue
    .line 986
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getHorizontalChainControlWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 9

    .prologue
    .line 2240
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v7, 0x0

    move-object v1, v7

    .line 2241
    .local v1, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2242
    move-object v7, v0

    move-object v2, v7

    .line 2244
    .local v2, "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    .line 2245
    move-object v7, v2

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    move-object v3, v7

    .line 2246
    .local v3, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    move-object v4, v7

    .line 2247
    .local v4, "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v7, v4

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    move-object v5, v7

    .line 2248
    .local v5, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 2249
    move-object v7, v2

    move-object v1, v7

    .line 2260
    .end local v2    # "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move-object v7, v1

    move-object v0, v7

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0

    .line 2246
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v3    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_1

    .line 2247
    .restart local v4    # "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    goto :goto_2

    .line 2252
    .restart local v5    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3
    move-object v7, v5

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    move-object v6, v7

    .line 2253
    .local v6, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v7, v6

    if-eqz v7, :cond_5

    move-object v7, v6

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    move-object v8, v2

    if-eq v7, v8, :cond_5

    .line 2254
    move-object v7, v2

    move-object v1, v7

    .line 2258
    :goto_4
    goto :goto_0

    .line 2252
    .end local v6    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_3

    .line 2256
    .restart local v6    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_5
    move-object v7, v5

    move-object v2, v7

    goto :goto_4
.end method

.method public getHorizontalChainStyle()I
    .locals 2

    .prologue
    .line 1650
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 3

    .prologue
    .line 2169
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0
.end method

.method public getInternalDrawBottom()I
    .locals 3

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getInternalDrawRight()I
    .locals 3

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method getInternalDrawX()I
    .locals 2

    .prologue
    .line 733
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method getInternalDrawY()I
    .locals 2

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 949
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getLength(I)I
    .locals 4

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "orientation":I
    move v2, v1

    if-nez v2, :cond_0

    .line 853
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    move v0, v2

    .line 857
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .line 854
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 855
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 857
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getMaxWidth()I
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 940
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    .line 931
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getOptimizerWrapHeight()I
    .locals 4

    .prologue
    .line 798
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move v1, v2

    .line 799
    .local v1, "h":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 800
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 801
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 808
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 809
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move v1, v2

    .line 812
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0

    .line 802
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v2, :cond_2

    .line 803
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move v1, v2

    .line 804
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0

    .line 806
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getOptimizerWrapWidth()I
    .locals 4

    .prologue
    .line 780
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move v1, v2

    .line 781
    .local v1, "w":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 782
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 783
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 790
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 791
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move v1, v2

    .line 794
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0

    .line 784
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v2, :cond_2

    .line 785
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move v1, v2

    .line 786
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0

    .line 788
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0
.end method

.method getRelativePositioning(I)I
    .locals 4

    .prologue
    .line 1548
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "orientation":I
    move v2, v1

    if-nez v2, :cond_0

    .line 1549
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    move v0, v2

    .line 1553
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .line 1550
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1551
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    move v0, v2

    goto :goto_0

    .line 1553
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    .locals 5

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-nez v1, :cond_0

    .line 395
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 397
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0
.end method

.method public getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    .locals 5

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-nez v1, :cond_0

    .line 384
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 386
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0
.end method

.method public getRight()I
    .locals 3

    .prologue
    .line 967
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getRootWidgetContainer()Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    .locals 3

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v0

    move-object v1, v2

    .line 540
    .local v1, "root":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 541
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 543
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v2, :cond_1

    .line 544
    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    move-object v0, v2

    .line 546
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1
    return-object v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method

.method protected getRootX()I
    .locals 3

    .prologue
    .line 912
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method protected getRootY()I
    .locals 3

    .prologue
    .line 922
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .locals 2

    .prologue
    .line 996
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getVerticalChainControlWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 9

    .prologue
    .line 2283
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v7, 0x0

    move-object v1, v7

    .line 2284
    .local v1, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2285
    move-object v7, v0

    move-object v2, v7

    .line 2286
    .local v2, "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    .line 2287
    move-object v7, v2

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    move-object v3, v7

    .line 2288
    .local v3, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    move-object v4, v7

    .line 2289
    .local v4, "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v7, v4

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    move-object v5, v7

    .line 2290
    .local v5, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 2291
    move-object v7, v2

    move-object v1, v7

    .line 2303
    .end local v2    # "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move-object v7, v1

    move-object v0, v7

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0

    .line 2288
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v3    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_1

    .line 2289
    .restart local v4    # "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    goto :goto_2

    .line 2294
    .restart local v5    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3
    move-object v7, v5

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    move-object v6, v7

    .line 2295
    .local v6, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v7, v6

    if-eqz v7, :cond_5

    move-object v7, v6

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    move-object v8, v2

    if-eq v7, v8, :cond_5

    .line 2296
    move-object v7, v2

    move-object v1, v7

    .line 2300
    :goto_4
    goto :goto_0

    .line 2294
    .end local v6    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_3

    .line 2298
    .restart local v6    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_5
    move-object v7, v5

    move-object v2, v7

    goto :goto_4
.end method

.method public getVerticalChainStyle()I
    .locals 2

    .prologue
    .line 1670
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 3

    .prologue
    .line 2178
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0
.end method

.method public getVisibility()I
    .locals 2

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 773
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 774
    const/4 v1, 0x0

    move v0, v1

    .line 776
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move v0, v1

    goto :goto_0
.end method

.method public getWrapHeight()I
    .locals 2

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getWrapWidth()I
    .locals 2

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 755
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 764
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public hasAncestor(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z
    .locals 5

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    move-object v2, v3

    .line 513
    .local v2, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 514
    const/4 v3, 0x1

    move v0, v3

    .line 529
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .line 516
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 517
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 527
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    move-object v2, v3

    .line 519
    :cond_2
    move-object v3, v2

    if-eqz v3, :cond_4

    .line 520
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_3

    .line 521
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 523
    :cond_3
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 525
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 529
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public hasBaseline()Z
    .locals 2

    .prologue
    .line 1022
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 15

    .prologue
    .line 1704
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v1, p1

    .local v1, "startType":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move-object/from16 v2, p2

    .local v2, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v3, p3

    .local v3, "endType":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move/from16 v4, p4

    .local v4, "margin":I
    move/from16 v5, p5

    .local v5, "goneMargin":I
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object v6, v8

    .line 1705
    .local v6, "startAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object v7, v8

    .line 1706
    .local v7, "endAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v8, v6

    move-object v9, v7

    move v10, v4

    move v11, v5

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v8 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v8

    .line 1708
    return-void
.end method

.method public isFullyResolved()Z
    .locals 3

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 370
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 371
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 372
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 373
    const/4 v1, 0x1

    move v0, v1

    .line 375
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isHeightWrapContent()Z
    .locals 2

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public isInHorizontalChain()Z
    .locals 3

    .prologue
    .line 2227
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_2

    .line 2229
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    .line 2231
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isInVerticalChain()Z
    .locals 3

    .prologue
    .line 2270
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_2

    .line 2272
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    .line 2274
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isInsideConstraintLayout()Z
    .locals 3

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    move-object v1, v2

    .line 493
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 494
    const/4 v2, 0x0

    move v0, v2

    .line 502
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .line 500
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    move-object v1, v2

    .line 496
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 497
    move-object v2, v1

    instance-of v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v2, :cond_0

    .line 498
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 502
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isRoot()Z
    .locals 2

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRootContainer()Z
    .locals 2

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    instance-of v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpreadHeight()Z
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpreadWidth()Z
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWidthWrapContent()Z
    .locals 2

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 258
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 259
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 260
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 261
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 262
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 263
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 264
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 265
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 266
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 267
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 268
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 269
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 270
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 271
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 272
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 273
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 274
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 275
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 276
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 277
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 278
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 279
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 280
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 281
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 282
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 283
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 284
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 285
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 286
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v3, v1, v2

    .line 287
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v3, v1, v2

    .line 288
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 289
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 290
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 291
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 292
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 293
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 294
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 295
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 296
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 297
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 298
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v1, v2

    .line 299
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v2, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v1, v2

    .line 300
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 301
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 302
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x0

    const v3, 0x7fffffff

    aput v3, v1, v2

    .line 303
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x1

    const v3, 0x7fffffff

    aput v3, v1, v2

    .line 304
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 305
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 306
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 307
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 308
    move-object v1, v0

    const v2, 0x7fffffff

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 309
    move-object v1, v0

    const v2, 0x7fffffff

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 310
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 311
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 312
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 313
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 314
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v1, :cond_0

    .line 315
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->reset()V

    .line 317
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v1, :cond_1

    .line 318
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->reset()V

    .line 320
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    .line 321
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 322
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 323
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 324
    return-void
.end method

.method public resetAllConstraints()V
    .locals 3

    .prologue
    .line 1969
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1970
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1971
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1972
    move-object v1, v0

    instance-of v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 1973
    .line 1989
    :goto_0
    return-void

    .line 1975
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_1

    .line 1976
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1977
    move-object v1, v0

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1982
    :cond_1
    :goto_1
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_2

    .line 1983
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1984
    move-object v1, v0

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1989
    :cond_2
    :goto_2
    goto :goto_0

    .line 1978
    :cond_3
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 1979
    move-object v1, v0

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1

    .line 1985
    :cond_4
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 1986
    move-object v1, v0

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_2
.end method

.method public resetAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 11

    .prologue
    .line 1998
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1999
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    instance-of v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v9, :cond_0

    .line 2000
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v2, v9

    .line 2001
    .local v2, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2002
    .line 2051
    .end local v2    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :goto_0
    return-void

    .line 2006
    :cond_0
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v2, v9

    .line 2007
    .local v2, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v3, v9

    .line 2008
    .local v3, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v4, v9

    .line 2009
    .local v4, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v5, v9

    .line 2010
    .local v5, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v6, v9

    .line 2011
    .local v6, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v7, v9

    .line 2012
    .local v7, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v8, v9

    .line 2014
    .local v8, "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v9, v1

    move-object v10, v6

    if-ne v9, v10, :cond_4

    .line 2015
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v2

    .line 2016
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_1

    .line 2017
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2018
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2020
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v4

    .line 2021
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_2

    .line 2022
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2023
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2025
    :cond_2
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 2026
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 2050
    :cond_3
    :goto_1
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2051
    goto/16 :goto_0

    .line 2027
    :cond_4
    move-object v9, v1

    move-object v10, v7

    if-ne v9, v10, :cond_6

    .line 2028
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v2

    .line 2029
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    if-ne v9, v10, :cond_5

    .line 2030
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2031
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2033
    :cond_5
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1

    .line 2034
    :cond_6
    move-object v9, v1

    move-object v10, v8

    if-ne v9, v10, :cond_8

    .line 2035
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v4

    .line 2036
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    if-ne v9, v10, :cond_7

    .line 2037
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2038
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2040
    :cond_7
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_1

    .line 2041
    :cond_8
    move-object v9, v1

    move-object v10, v2

    if-eq v9, v10, :cond_9

    move-object v9, v1

    move-object v10, v3

    if-ne v9, v10, :cond_a

    .line 2042
    :cond_9
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 2043
    move-object v9, v6

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_1

    .line 2045
    :cond_a
    move-object v9, v1

    move-object v10, v4

    if-eq v9, v10, :cond_b

    move-object v9, v1

    move-object v10, v5

    if-ne v9, v10, :cond_3

    .line 2046
    :cond_b
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 2047
    move-object v9, v6

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_1
.end method

.method public resetAnchors()V
    .locals 7

    .prologue
    .line 2057
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    move-object v1, v5

    .line 2058
    .local v1, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    .line 2059
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v2, v5

    .line 2060
    .local v2, "parentContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2061
    .line 2068
    .end local v2    # "parentContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :goto_0
    return-void

    .line 2064
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .local v3, "mAnchorsSize":I
    :goto_1
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 2065
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v4, v5

    .line 2066
    .local v4, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2064
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2068
    .end local v4    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1
    goto :goto_0
.end method

.method public resetAnchors(I)V
    .locals 8

    .prologue
    .line 2074
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "connectionCreator":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    move-object v2, v6

    .line 2075
    .local v2, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    instance-of v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v6, :cond_0

    .line 2076
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v3, v6

    .line 2077
    .local v3, "parentContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v6, v3

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2078
    .line 2092
    .end local v3    # "parentContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :goto_0
    return-void

    .line 2081
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .local v4, "mAnchorsSize":I
    :goto_1
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_3

    .line 2082
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v6

    .line 2083
    .local v5, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 2084
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isVerticalAnchor()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2085
    move-object v6, v0

    sget v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 2089
    :goto_2
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2081
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2087
    :cond_2
    move-object v6, v0

    sget v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    goto :goto_2

    .line 2092
    .end local v5    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_3
    goto :goto_0
.end method

.method public resetResolutionNodes()V
    .locals 4

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 335
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->reset()V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V
    .locals 4

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "cache":Landroidx/constraintlayout/solver/Cache;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 443
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 444
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 445
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 446
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 447
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 448
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 449
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 450
    return-void
.end method

.method public resolve()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 4

    .prologue
    .line 1577
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "baseline":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1578
    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1587
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "companion":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 1588
    return-void
.end method

.method public setContainerItemSkip(I)V
    .locals 4

    .prologue
    .line 1599
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "skip":I
    move v2, v1

    if-ltz v2, :cond_0

    .line 1600
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 1604
    :goto_0
    return-void

    .line 1602
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_0
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 660
    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 680
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v3, v8

    .line 681
    .local v3, "left":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v4, v8

    .line 682
    .local v4, "top":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v5, v8

    .line 683
    .local v5, "right":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v6, v8

    .line 684
    .local v6, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v8, v3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".left"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 685
    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".top"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 686
    move-object v8, v5

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".right"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 687
    move-object v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".bottom"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 688
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v8, :cond_0

    .line 689
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v7, v8

    .line 690
    .local v7, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v8, v7

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".baseline"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 692
    .end local v7    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_0
    return-void
.end method

.method public setDimension(II)V
    .locals 5

    .prologue
    .line 1442
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1443
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v3, v4, :cond_0

    .line 1444
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1446
    :cond_0
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1447
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v3, v4, :cond_1

    .line 1448
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1450
    :cond_1
    return-void
.end method

.method public setDimensionRatio(FI)V
    .locals 5

    .prologue
    .line 1349
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "ratio":F
    move v2, p2

    .local v2, "dimensionRatioSide":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1350
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1351
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 1287
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "ratio":Ljava/lang/String;
    move-object v11, v1

    if-eqz v11, :cond_0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 1288
    :cond_0
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1289
    .line 1341
    :goto_0
    return-void

    .line 1291
    :cond_1
    const/4 v11, -0x1

    move v2, v11

    .line 1292
    .local v2, "dimensionRatioSide":I
    const/4 v11, 0x0

    move v3, v11

    .line 1293
    .local v3, "dimensionRatio":F
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v4, v11

    .line 1294
    .local v4, "len":I
    move-object v11, v1

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v5, v11

    .line 1295
    .local v5, "commaIndex":I
    move v11, v5

    if-lez v11, :cond_6

    move v11, v5

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_6

    .line 1296
    move-object v11, v1

    const/4 v12, 0x0

    move v13, v5

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 1297
    .local v6, "dimension":Ljava/lang/String;
    move-object v11, v6

    const-string/jumbo v12, "W"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1298
    const/4 v11, 0x0

    move v2, v11

    .line 1302
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 1306
    .end local v6    # "dimension":Ljava/lang/String;
    :goto_2
    move-object v11, v1

    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v6, v11

    .line 1308
    .local v6, "colonIndex":I
    move v11, v6

    if-ltz v11, :cond_8

    move v11, v6

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_8

    .line 1309
    move-object v11, v1

    move v12, v5

    move v13, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 1310
    .local v7, "nominator":Ljava/lang/String;
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 1311
    .local v8, "denominator":Ljava/lang/String;
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1313
    move-object v11, v7

    :try_start_0
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move v9, v11

    .line 1314
    .local v9, "nominatorValue":F
    move-object v11, v8

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move v10, v11

    .line 1315
    .local v10, "denominatorValue":F
    move v11, v9

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    move v11, v10

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 1316
    move v11, v2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 1317
    move v11, v10

    move v12, v9

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    move v3, v11

    .line 1324
    .line 1326
    .line 1337
    .end local v7    # "nominator":Ljava/lang/String;
    .end local v8    # "denominator":Ljava/lang/String;
    .end local v9    # "nominatorValue":F
    .end local v10    # "denominatorValue":F
    :cond_3
    :goto_3
    move v11, v3

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 1338
    move-object v11, v0

    move v12, v3

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1339
    move-object v11, v0

    move v12, v2

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1341
    :cond_4
    goto/16 :goto_0

    .line 1299
    .local v6, "dimension":Ljava/lang/String;
    :cond_5
    move-object v11, v6

    const-string/jumbo v12, "H"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1300
    const/4 v11, 0x1

    move v2, v11

    goto :goto_1

    .line 1304
    .end local v6    # "dimension":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    move v5, v11

    goto :goto_2

    .line 1319
    .local v6, "colonIndex":I
    .restart local v7    # "nominator":Ljava/lang/String;
    .restart local v8    # "denominator":Ljava/lang/String;
    .restart local v9    # "nominatorValue":F
    .restart local v10    # "denominatorValue":F
    :cond_7
    move v11, v9

    move v12, v10

    div-float/2addr v11, v12

    :try_start_1
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    move v3, v11

    goto :goto_3

    .line 1322
    .end local v9    # "nominatorValue":F
    .end local v10    # "denominatorValue":F
    :catch_0
    move-exception v11

    move-object v9, v11

    goto :goto_3

    .line 1327
    .end local v7    # "nominator":Ljava/lang/String;
    .end local v8    # "denominator":Ljava/lang/String;
    :cond_8
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 1328
    .local v7, "r":Ljava/lang/String;
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1330
    move-object v11, v7

    :try_start_2
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    move v3, v11

    .line 1333
    goto :goto_3

    .line 1331
    :catch_1
    move-exception v11

    move-object v8, v11

    goto :goto_3
.end method

.method public setDrawHeight(I)V
    .locals 4

    .prologue
    .line 1204
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "drawHeight":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 1205
    return-void
.end method

.method public setDrawOrigin(II)V
    .locals 6

    .prologue
    .line 1163
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1164
    move-object v3, v0

    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1165
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1166
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1167
    return-void
.end method

.method public setDrawWidth(I)V
    .locals 4

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "drawWidth":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 1196
    return-void
.end method

.method public setDrawX(I)V
    .locals 5

    .prologue
    .line 1175
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1176
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1177
    return-void
.end method

.method public setDrawY(I)V
    .locals 5

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "y":I
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1186
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1187
    return-void
.end method

.method public setFrame(III)V
    .locals 7

    .prologue
    .line 1505
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move v3, p3

    .local v3, "orientation":I
    move v4, v3

    if-nez v4, :cond_1

    .line 1506
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 1510
    :cond_0
    :goto_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 1511
    return-void

    .line 1507
    :cond_1
    move v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1508
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    goto :goto_0
.end method

.method public setFrame(IIII)V
    .locals 9

    .prologue
    .line 1461
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move v7, v3

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 1462
    .local v5, "w":I
    move v7, v4

    move v8, v2

    sub-int/2addr v7, v8

    move v6, v7

    .line 1464
    .local v6, "h":I
    move-object v7, v0

    move v8, v1

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1465
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1467
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 1468
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1469
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1470
    .line 1495
    :goto_0
    return-void

    .line 1474
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_1

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v7, v8, :cond_1

    .line 1475
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move v5, v7

    .line 1477
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_2

    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v7, v8, :cond_2

    .line 1478
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move v6, v7

    .line 1481
    :cond_2
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1482
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1484
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v7, v8, :cond_3

    .line 1485
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1487
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v7, v8, :cond_4

    .line 1488
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1494
    :cond_4
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 1495
    goto :goto_0
.end method

.method public setGoneMargin(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 5

    .prologue
    .line 1100
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "type":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    move v2, p2

    .local v2, "goneMargin":I
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1124
    :goto_0
    return-void

    .line 1102
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1104
    goto :goto_0

    .line 1106
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1108
    goto :goto_0

    .line 1110
    :pswitch_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1112
    goto :goto_0

    .line 1114
    :pswitch_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1116
    goto :goto_0

    .line 1100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setHeight(I)V
    .locals 4

    .prologue
    .line 1225
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "h":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1226
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v2, v3, :cond_0

    .line 1227
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1229
    :cond_0
    return-void
.end method

.method public setHeightWrapContent(Z)V
    .locals 4

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "heightWrapContent":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 589
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 4

    .prologue
    .line 1378
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "horizontalBiasPercent":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1379
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 4

    .prologue
    .line 1640
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "horizontalChainStyle":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 1641
    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 6

    .prologue
    .line 1520
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "right":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1521
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1522
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v3, v4, :cond_0

    .line 1523
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1525
    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 5

    .prologue
    .line 2203
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "behaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    move-object v4, v1

    aput-object v4, v2, v3

    .line 2204
    move-object v2, v1

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 2205
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 2207
    :cond_0
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 7

    .prologue
    .line 1254
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "horizontalMatchStyle":I
    move v2, p2

    .local v2, "min":I
    move v3, p3

    .local v3, "max":I
    move v4, p4

    .local v4, "percent":F
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1255
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1256
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1257
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 1258
    move v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v5, :cond_0

    .line 1259
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1261
    :cond_0
    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 5

    .prologue
    .line 1621
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "horizontalWeight":F
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v3, 0x0

    move v4, v1

    aput v4, v2, v3

    .line 1622
    return-void
.end method

.method public setLength(II)V
    .locals 5

    .prologue
    .line 1238
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "length":I
    move v2, p2

    .local v2, "orientation":I
    move v3, v2

    if-nez v3, :cond_1

    .line 1239
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1241
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "maxHeight":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v3, 0x1

    move v4, v1

    aput v4, v2, v3

    .line 114
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "maxWidth":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v3, 0x0

    move v4, v1

    aput v4, v2, v3

    .line 110
    return-void
.end method

.method public setMinHeight(I)V
    .locals 4

    .prologue
    .line 1410
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "h":I
    move v2, v1

    if-gez v2, :cond_0

    .line 1411
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 1415
    :goto_0
    return-void

    .line 1413
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 4

    .prologue
    .line 1397
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "w":I
    move v2, v1

    if-gez v2, :cond_0

    .line 1398
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 1402
    :goto_0
    return-void

    .line 1400
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0
.end method

.method public setOffset(II)V
    .locals 5

    .prologue
    .line 1089
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 1090
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 1091
    return-void
.end method

.method public setOrigin(II)V
    .locals 5

    .prologue
    .line 1078
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1079
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1080
    return-void
.end method

.method public setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 4

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 565
    return-void
.end method

.method setRelativePositioning(II)V
    .locals 5

    .prologue
    .line 1564
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "orientation":I
    move v3, v2

    if-nez v3, :cond_1

    .line 1565
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1567
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 626
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 4

    .prologue
    .line 1388
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "verticalBiasPercent":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1389
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 4

    .prologue
    .line 1660
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "verticalChainStyle":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 1661
    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 6

    .prologue
    .line 1534
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "top":I
    move v2, p2

    .local v2, "bottom":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1535
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1536
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v3, v4, :cond_0

    .line 1537
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1539
    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 5

    .prologue
    .line 2215
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "behaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    move-object v4, v1

    aput-object v4, v2, v3

    .line 2216
    move-object v2, v1

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 2217
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 2219
    :cond_0
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 7

    .prologue
    .line 1272
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "verticalMatchStyle":I
    move v2, p2

    .local v2, "min":I
    move v3, p3

    .local v3, "max":I
    move v4, p4

    .local v4, "percent":F
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1273
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1274
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1275
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 1276
    move v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v5, :cond_0

    .line 1277
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1279
    :cond_0
    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 5

    .prologue
    .line 1630
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "verticalWeight":F
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v3, 0x1

    move v4, v1

    aput v4, v2, v3

    .line 1631
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "visibility":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 635
    return-void
.end method

.method public setWidth(I)V
    .locals 4

    .prologue
    .line 1213
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "w":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1214
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v2, v3, :cond_0

    .line 1215
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1217
    :cond_0
    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 4

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "widthWrapContent":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 573
    return-void
.end method

.method public setWrapHeight(I)V
    .locals 4

    .prologue
    .line 1432
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "h":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 1433
    return-void
.end method

.method public setWrapWidth(I)V
    .locals 4

    .prologue
    .line 1423
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "w":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 1424
    return-void
.end method

.method public setX(I)V
    .locals 4

    .prologue
    .line 1059
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1060
    return-void
.end method

.method public setY(I)V
    .locals 4

    .prologue
    .line 1068
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "y":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1069
    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 8

    .prologue
    .line 2534
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "hparentWrapContent":Z
    move v2, p2

    .local v2, "vparentWrapContent":Z
    move v3, p3

    .local v3, "horizontalDimensionFixed":Z
    move v4, p4

    .local v4, "verticalDimensionFixed":Z
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 2535
    move v5, v3

    if-eqz v5, :cond_8

    move v5, v4

    if-nez v5, :cond_8

    .line 2536
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2546
    :cond_0
    :goto_0
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez v5, :cond_9

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2547
    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2553
    :cond_2
    :goto_1
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 2554
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2555
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2557
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2558
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2566
    :cond_4
    :goto_2
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 2567
    move v5, v1

    if-eqz v5, :cond_c

    move v5, v2

    if-nez v5, :cond_c

    .line 2568
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2575
    :cond_5
    :goto_3
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 2576
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v5, :cond_d

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v5, :cond_d

    .line 2577
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2584
    :cond_6
    :goto_4
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    move v5, v1

    if-eqz v5, :cond_7

    move v5, v2

    if-eqz v5, :cond_7

    .line 2585
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2586
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2588
    :cond_7
    return-void

    .line 2537
    :cond_8
    move v5, v3

    if-nez v5, :cond_0

    move v5, v4

    if-eqz v5, :cond_0

    .line 2538
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2539
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 2541
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    goto/16 :goto_0

    .line 2548
    :cond_9
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2549
    :cond_a
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_1

    .line 2559
    :cond_b
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2560
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2561
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_2

    .line 2569
    :cond_c
    move v5, v1

    if-nez v5, :cond_5

    move v5, v2

    if-eqz v5, :cond_5

    .line 2570
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2571
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_3

    .line 2578
    :cond_d
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v5, :cond_6

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v5, :cond_6

    .line 2579
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2580
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") - ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") wrap: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return-object v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    const-string/jumbo v2, ""

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method public updateDrawPosition()V
    .locals 8

    .prologue
    .line 1132
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move v1, v5

    .line 1133
    .local v1, "left":I
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move v2, v5

    .line 1134
    .local v2, "top":I
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v5, v6

    move v3, v5

    .line 1135
    .local v3, "right":I
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v5, v6

    move v4, v5

    .line 1136
    .local v4, "bottom":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1137
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1138
    move-object v5, v0

    move v6, v3

    move v7, v1

    sub-int/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 1139
    move-object v5, v0

    move v6, v4

    move v7, v2

    sub-int/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 1140
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 13

    .prologue
    .line 2865
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v8

    move v2, v8

    .line 2866
    .local v2, "left":I
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v8

    move v3, v8

    .line 2867
    .local v3, "top":I
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v8

    move v4, v8

    .line 2868
    .local v4, "right":I
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v8

    move v5, v8

    .line 2869
    .local v5, "bottom":I
    move v8, v4

    move v9, v2

    sub-int/2addr v8, v9

    move v6, v8

    .line 2870
    .local v6, "w":I
    move v8, v5

    move v9, v3

    sub-int/2addr v8, v9

    move v7, v8

    .line 2871
    .local v7, "h":I
    move v8, v6

    if-ltz v8, :cond_0

    move v8, v7

    if-ltz v8, :cond_0

    move v8, v2

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_0

    move v8, v2

    const v9, 0x7fffffff

    if-eq v8, v9, :cond_0

    move v8, v3

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_0

    move v8, v3

    const v9, 0x7fffffff

    if-eq v8, v9, :cond_0

    move v8, v4

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_0

    move v8, v4

    const v9, 0x7fffffff

    if-eq v8, v9, :cond_0

    move v8, v5

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_0

    move v8, v5

    const v9, 0x7fffffff

    if-ne v8, v9, :cond_1

    .line 2876
    :cond_0
    const/4 v8, 0x0

    move v2, v8

    .line 2877
    const/4 v8, 0x0

    move v3, v8

    .line 2878
    const/4 v8, 0x0

    move v4, v8

    .line 2879
    const/4 v8, 0x0

    move v5, v8

    .line 2881
    :cond_1
    move-object v8, v0

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 2882
    return-void
.end method

.method public updateResolutionNodes()V
    .locals 4

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 344
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->update()V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method
