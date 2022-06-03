.class public Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table;
    }
.end annotation


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final END:I = 0x7

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field public baselineToBaseline:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field dimensionRatioSide:I

.field dimensionRatioValue:F

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public helped:Z

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field horizontalDimensionFixed:Z

.field public horizontalWeight:F

.field isGuideline:Z

.field isHelper:Z

.field isInPlaceholder:Z

.field public leftToLeft:I

.field public leftToRight:I

.field public matchConstraintDefaultHeight:I

.field public matchConstraintDefaultWidth:I

.field public matchConstraintMaxHeight:I

.field public matchConstraintMaxWidth:I

.field public matchConstraintMinHeight:I

.field public matchConstraintMinWidth:I

.field public matchConstraintPercentHeight:F

.field public matchConstraintPercentWidth:F

.field needsBaseline:Z

.field public orientation:I

.field resolveGoneLeftMargin:I

.field resolveGoneRightMargin:I

.field resolvedGuideBegin:I

.field resolvedGuideEnd:I

.field resolvedGuidePercent:F

.field resolvedHorizontalBias:F

.field resolvedLeftToLeft:I

.field resolvedLeftToRight:I

.field resolvedRightToLeft:I

.field resolvedRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field verticalDimensionFixed:Z

.field public verticalWeight:F

.field widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 3040
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2166
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2171
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2176
    move-object v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2181
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2186
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2191
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2196
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2201
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2206
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2211
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2216
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2221
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2226
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2231
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2236
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2241
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2246
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2251
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2256
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2261
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2266
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2271
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2276
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2281
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2286
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2291
    move-object v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2296
    move-object v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2301
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2306
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2311
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2317
    move-object v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2323
    move-object v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2335
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2347
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2360
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2373
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2379
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2385
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2391
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2397
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2402
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2407
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2413
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2419
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2421
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2430
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2439
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2442
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2443
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2445
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2446
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2447
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2448
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2450
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2451
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2452
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2453
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2454
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2455
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2456
    move-object v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2462
    move-object v3, v0

    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2470
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    .line 3041
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 23

    .prologue
    .line 2649
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object/from16 v3, p1

    .local v3, "c":Landroid/content/Context;
    move-object/from16 v4, p2

    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v17 .. v19}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2166
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2171
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2176
    move-object/from16 v17, v2

    const/high16 v18, -0x40800000    # -1.0f

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2181
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2186
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2191
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2196
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2201
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2206
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2211
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2216
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2221
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2226
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2231
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2236
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2241
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2246
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2251
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2256
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2261
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2266
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2271
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2276
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2281
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2286
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2291
    move-object/from16 v17, v2

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2296
    move-object/from16 v17, v2

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2301
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2306
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2311
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2317
    move-object/from16 v17, v2

    const/high16 v18, -0x40800000    # -1.0f

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2323
    move-object/from16 v17, v2

    const/high16 v18, -0x40800000    # -1.0f

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2335
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2347
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2360
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2373
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2379
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2385
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2391
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2397
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2402
    move-object/from16 v17, v2

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2407
    move-object/from16 v17, v2

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2413
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2419
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2421
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2430
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2439
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2442
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2443
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2445
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2446
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2447
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2448
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2450
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2451
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2452
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2453
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2454
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2455
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2456
    move-object/from16 v17, v2

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2462
    move-object/from16 v17, v2

    new-instance v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2470
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    .line 2650
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    sget-object v19, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    move-object/from16 v5, v17

    .line 2651
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v17

    move/from16 v6, v17

    .line 2652
    .local v6, "N":I
    const/16 v17, 0x0

    move/from16 v7, v17

    .local v7, "i":I
    :goto_0
    move/from16 v17, v7

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 2653
    move-object/from16 v17, v5

    move/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v17

    move/from16 v8, v17

    .line 2654
    .local v8, "attr":I
    sget-object v17, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table;->map:Landroid/util/SparseIntArray;

    move/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseIntArray;->get(I)I

    move-result v17

    move/from16 v9, v17

    .line 2655
    .local v9, "look":I
    move/from16 v17, v9

    packed-switch v17, :pswitch_data_0

    .line 2652
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2658
    :pswitch_1
    goto :goto_1

    .line 2661
    :pswitch_2
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2662
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2663
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    goto :goto_1

    .line 2668
    :pswitch_3
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2669
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2670
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    goto :goto_1

    .line 2675
    :pswitch_4
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2676
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2677
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    goto/16 :goto_1

    .line 2682
    :pswitch_5
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2683
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2684
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    goto/16 :goto_1

    .line 2689
    :pswitch_6
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2690
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2691
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    goto/16 :goto_1

    .line 2696
    :pswitch_7
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2697
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2698
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_1

    .line 2703
    :pswitch_8
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2704
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2705
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto/16 :goto_1

    .line 2710
    :pswitch_9
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2711
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2712
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto/16 :goto_1

    .line 2717
    :pswitch_a
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2718
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2719
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto/16 :goto_1

    .line 2724
    :pswitch_b
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2725
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2726
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    goto/16 :goto_1

    .line 2731
    :pswitch_c
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2732
    goto/16 :goto_1

    .line 2735
    :pswitch_d
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    const/high16 v19, 0x43b40000    # 360.0f

    rem-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2736
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_0

    .line 2737
    move-object/from16 v17, v2

    const/high16 v18, 0x43b40000    # 360.0f

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x43b40000    # 360.0f

    rem-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    goto/16 :goto_1

    .line 2742
    :pswitch_e
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2743
    goto/16 :goto_1

    .line 2746
    :pswitch_f
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2747
    goto/16 :goto_1

    .line 2750
    :pswitch_10
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2751
    goto/16 :goto_1

    .line 2755
    :pswitch_11
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2756
    goto/16 :goto_1

    .line 2760
    :pswitch_12
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2761
    goto/16 :goto_1

    .line 2765
    :pswitch_13
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2766
    goto/16 :goto_1

    .line 2770
    :pswitch_14
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2771
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2772
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    goto/16 :goto_1

    .line 2777
    :pswitch_15
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2778
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2779
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    goto/16 :goto_1

    .line 2784
    :pswitch_16
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2785
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2786
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    goto/16 :goto_1

    .line 2791
    :pswitch_17
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2792
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2793
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    goto/16 :goto_1

    .line 2798
    :pswitch_18
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2799
    goto/16 :goto_1

    .line 2802
    :pswitch_19
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2803
    goto/16 :goto_1

    .line 2806
    :pswitch_1a
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2807
    goto/16 :goto_1

    .line 2810
    :pswitch_1b
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2811
    goto/16 :goto_1

    .line 2814
    :pswitch_1c
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2815
    goto/16 :goto_1

    .line 2818
    :pswitch_1d
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2819
    goto/16 :goto_1

    .line 2822
    :pswitch_1e
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2823
    goto/16 :goto_1

    .line 2826
    :pswitch_1f
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2827
    goto/16 :goto_1

    .line 2830
    :pswitch_20
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2831
    move-object/from16 v17, v2

    const/high16 v18, 0x7fc00000    # Float.NaN

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2832
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2833
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2834
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v10, v17

    .line 2835
    .local v10, "len":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2c

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    move/from16 v11, v17

    .line 2836
    .local v11, "commaIndex":I
    move/from16 v17, v11

    if-lez v17, :cond_4

    move/from16 v17, v11

    move/from16 v18, v10

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 2837
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v19, v11

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    .line 2838
    .local v12, "dimension":Ljava/lang/String;
    move-object/from16 v17, v12

    const-string/jumbo v18, "W"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2839
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2843
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 2847
    .end local v12    # "dimension":Ljava/lang/String;
    :goto_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x3a

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    move/from16 v12, v17

    .line 2848
    .local v12, "colonIndex":I
    move/from16 v17, v12

    if-ltz v17, :cond_6

    move/from16 v17, v12

    move/from16 v18, v10

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 2849
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, v17

    .line 2850
    .local v13, "nominator":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v18, v12

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, v17

    .line 2851
    .local v14, "denominator":Ljava/lang/String;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 2853
    move-object/from16 v17, v13

    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move/from16 v15, v17

    .line 2854
    .local v15, "nominatorValue":F
    move-object/from16 v17, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move/from16 v16, v17

    .line 2855
    .local v16, "denominatorValue":F
    move/from16 v17, v15

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_2

    move/from16 v17, v16

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_2

    .line 2856
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 2857
    move-object/from16 v17, v2

    move/from16 v18, v16

    move/from16 v19, v15

    div-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2864
    .line 2866
    .line 2876
    .end local v13    # "nominator":Ljava/lang/String;
    .end local v14    # "denominator":Ljava/lang/String;
    .end local v15    # "nominatorValue":F
    .end local v16    # "denominatorValue":F
    :cond_2
    :goto_4
    goto/16 :goto_1

    .line 2840
    .local v12, "dimension":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v12

    const-string/jumbo v18, "H"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2841
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    goto/16 :goto_2

    .line 2845
    .end local v12    # "dimension":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    move/from16 v11, v17

    goto/16 :goto_3

    .line 2859
    .local v12, "colonIndex":I
    .restart local v13    # "nominator":Ljava/lang/String;
    .restart local v14    # "denominator":Ljava/lang/String;
    .restart local v15    # "nominatorValue":F
    .restart local v16    # "denominatorValue":F
    :cond_5
    move-object/from16 v17, v2

    move/from16 v18, v15

    move/from16 v19, v16

    div-float v18, v18, v19

    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 2862
    .end local v15    # "nominatorValue":F
    .end local v16    # "denominatorValue":F
    :catch_0
    move-exception v17

    move-object/from16 v15, v17

    goto :goto_4

    .line 2867
    .end local v13    # "nominator":Ljava/lang/String;
    .end local v14    # "denominator":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, v17

    .line 2868
    .local v13, "r":Ljava/lang/String;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 2870
    move-object/from16 v17, v2

    move-object/from16 v18, v13

    :try_start_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2873
    goto :goto_4

    .line 2871
    :catch_1
    move-exception v17

    move-object/from16 v14, v17

    goto :goto_4

    .line 2880
    .end local v10    # "len":I
    .end local v11    # "commaIndex":I
    .end local v12    # "colonIndex":I
    .end local v13    # "r":Ljava/lang/String;
    :pswitch_21
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2881
    goto/16 :goto_1

    .line 2884
    :pswitch_22
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2885
    goto/16 :goto_1

    .line 2888
    :pswitch_23
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2889
    goto/16 :goto_1

    .line 2892
    :pswitch_24
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2893
    goto/16 :goto_1

    .line 2896
    :pswitch_25
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2897
    goto/16 :goto_1

    .line 2900
    :pswitch_26
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2901
    goto/16 :goto_1

    .line 2904
    :pswitch_27
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2905
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2906
    const-string/jumbo v17, "ConstraintLayout"

    const-string/jumbo v18, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    goto/16 :goto_1

    .line 2912
    :pswitch_28
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2913
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2914
    const-string/jumbo v17, "ConstraintLayout"

    const-string/jumbo v18, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    goto/16 :goto_1

    .line 2921
    :pswitch_29
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    :try_start_3
    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2927
    goto/16 :goto_1

    .line 2922
    :catch_2
    move-exception v17

    move-object/from16 v10, v17

    .line 2923
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v17, v5

    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v11, v17

    .line 2924
    .local v11, "value":I
    move/from16 v17, v11

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 2925
    move-object/from16 v17, v2

    const/16 v18, -0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2928
    :cond_7
    goto/16 :goto_1

    .line 2932
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "value":I
    :pswitch_2a
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    :try_start_4
    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2938
    goto/16 :goto_1

    .line 2933
    :catch_3
    move-exception v17

    move-object/from16 v10, v17

    .line 2934
    .restart local v10    # "e":Ljava/lang/Exception;
    move-object/from16 v17, v5

    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v11, v17

    .line 2935
    .restart local v11    # "value":I
    move/from16 v17, v11

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 2936
    move-object/from16 v17, v2

    const/16 v18, -0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2939
    :cond_8
    goto/16 :goto_1

    .line 2942
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "value":I
    :pswitch_2b
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v8

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2943
    goto/16 :goto_1

    .line 2947
    :pswitch_2c
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    :try_start_5
    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2953
    goto/16 :goto_1

    .line 2948
    :catch_4
    move-exception v17

    move-object/from16 v10, v17

    .line 2949
    .restart local v10    # "e":Ljava/lang/Exception;
    move-object/from16 v17, v5

    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v11, v17

    .line 2950
    .restart local v11    # "value":I
    move/from16 v17, v11

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 2951
    move-object/from16 v17, v2

    const/16 v18, -0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2954
    :cond_9
    goto/16 :goto_1

    .line 2958
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "value":I
    :pswitch_2d
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v20, v2

    :try_start_6
    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 2964
    goto/16 :goto_1

    .line 2959
    :catch_5
    move-exception v17

    move-object/from16 v10, v17

    .line 2960
    .restart local v10    # "e":Ljava/lang/Exception;
    move-object/from16 v17, v5

    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v11, v17

    .line 2961
    .restart local v11    # "value":I
    move/from16 v17, v11

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2962
    move-object/from16 v17, v2

    const/16 v18, -0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2965
    :cond_a
    goto/16 :goto_1

    .line 2968
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "value":I
    :pswitch_2e
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v8

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2969
    goto/16 :goto_1

    .line 2973
    :pswitch_2f
    goto/16 :goto_1

    .line 2977
    :pswitch_30
    goto/16 :goto_1

    .line 2981
    :pswitch_31
    goto/16 :goto_1

    .line 2985
    :pswitch_32
    goto/16 :goto_1

    .line 2993
    .end local v8    # "attr":I
    .end local v9    # "look":I
    :cond_b
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 2994
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 2995
    return-void

    .line 2655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_13
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_25
        :pswitch_26
        :pswitch_1e
        :pswitch_1f
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 3044
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2166
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2171
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2176
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2181
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2186
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2191
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2196
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2201
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2206
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2211
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2216
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2221
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2226
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2231
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2236
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2241
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2246
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2251
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2256
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2261
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2266
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2271
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2276
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2281
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2286
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2291
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2296
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2301
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2306
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2311
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2317
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2323
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2335
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2347
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2360
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2373
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2379
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2385
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2391
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2397
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2402
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2407
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2413
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2419
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2421
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2430
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2439
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2442
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2443
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2445
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2446
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2447
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2448
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2450
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2451
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2452
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2453
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2454
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2455
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2456
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2462
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2470
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    .line 3045
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 6

    .prologue
    .line 2478
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2166
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2171
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2176
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2181
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2186
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2191
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2196
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2201
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2206
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2211
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2216
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2221
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2226
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2231
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2236
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2241
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2246
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2251
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2256
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2261
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2266
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2271
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2276
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2281
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2286
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2291
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2296
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2301
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2306
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2311
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2317
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2323
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2335
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2347
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2360
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2373
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2379
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2385
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2391
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2397
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2402
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2407
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2413
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2419
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2421
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2430
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2439
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2442
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2443
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2445
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2446
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2447
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2448
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2450
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2451
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2452
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2453
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2454
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2455
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2456
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2462
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2470
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    .line 2479
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2480
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2481
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2482
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2483
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2484
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2485
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2486
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2487
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2488
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2489
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2490
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2491
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2492
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2493
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2494
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2495
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2496
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2497
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2498
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2499
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2500
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2501
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2502
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2503
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2504
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2505
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2506
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2507
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2508
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2509
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2510
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2511
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2512
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2513
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2514
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2515
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2516
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2517
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2518
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2519
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2520
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2521
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2522
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2523
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2524
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2525
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2526
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2527
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2528
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2529
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2530
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2531
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2532
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2533
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2534
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2535
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2536
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2537
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2538
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 2465
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_0

    .line 2466
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->reset()V

    .line 2468
    :cond_0
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 3053
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move v1, p1

    .local v1, "layoutDirection":I
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move v2, v6

    .line 3054
    .local v2, "preLeftMargin":I
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move v3, v6

    .line 3056
    .local v3, "preRightMargin":I
    move-object v6, v0

    move v7, v1

    invoke-super {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 3058
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 3059
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 3060
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 3061
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 3063
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 3064
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 3065
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 3066
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 3067
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 3069
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3070
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 3071
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 3073
    const/4 v6, 0x1

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getLayoutDirection()I

    move-result v7

    if-ne v6, v7, :cond_9

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 3075
    .local v4, "isRtl":Z
    move v6, v4

    if-eqz v6, :cond_d

    .line 3076
    const/4 v6, 0x0

    move v5, v6

    .line 3077
    .local v5, "startEndDefined":Z
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    .line 3078
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 3079
    const/4 v6, 0x1

    move v5, v6

    .line 3084
    :cond_0
    :goto_1
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 3085
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 3086
    const/4 v6, 0x1

    move v5, v6

    .line 3088
    :cond_1
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 3089
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 3090
    const/4 v6, 0x1

    move v5, v6

    .line 3092
    :cond_2
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 3093
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 3095
    :cond_3
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 3096
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 3098
    :cond_4
    move v6, v5

    if-eqz v6, :cond_5

    .line 3099
    move-object v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    sub-float/2addr v7, v8

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 3103
    :cond_5
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v6, :cond_6

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 3104
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_b

    .line 3105
    move-object v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    sub-float/2addr v7, v8

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 3106
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3107
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 3118
    .line 3139
    .end local v5    # "startEndDefined":Z
    :cond_6
    :goto_2
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    .line 3141
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_13

    .line 3142
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 3143
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v6, :cond_7

    move v6, v3

    if-lez v6, :cond_7

    .line 3144
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 3152
    :cond_7
    :goto_3
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_14

    .line 3153
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 3154
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz v6, :cond_8

    move v6, v2

    if-lez v6, :cond_8

    .line 3155
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 3164
    :cond_8
    :goto_4
    return-void

    .line 3073
    .end local v4    # "isRtl":Z
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3080
    .restart local v4    # "isRtl":Z
    .restart local v5    # "startEndDefined":Z
    :cond_a
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 3081
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 3082
    const/4 v6, 0x1

    move v5, v6

    goto/16 :goto_1

    .line 3108
    :cond_b
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_c

    .line 3109
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 3110
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3111
    move-object v6, v0

    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    goto :goto_2

    .line 3112
    :cond_c
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 3113
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3114
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 3115
    move-object v6, v0

    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    goto/16 :goto_2

    .line 3119
    .end local v5    # "startEndDefined":Z
    :cond_d
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_e

    .line 3120
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 3122
    :cond_e
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_f

    .line 3123
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 3125
    :cond_f
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_10

    .line 3126
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 3128
    :cond_10
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_11

    .line 3129
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 3131
    :cond_11
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_12

    .line 3132
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 3134
    :cond_12
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 3135
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    goto/16 :goto_2

    .line 3146
    :cond_13
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    .line 3147
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 3148
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v6, :cond_7

    move v6, v3

    if-lez v6, :cond_7

    .line 3149
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 3157
    :cond_14
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 3158
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 3159
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz v6, :cond_8

    move v6, v2

    if-lez v6, :cond_8

    .line 3160
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_4
.end method

.method public validate()V
    .locals 5

    .prologue
    .line 2998
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2999
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 3000
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 3001
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    if-eqz v1, :cond_0

    .line 3002
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 3003
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 3005
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    if-eqz v1, :cond_1

    .line 3006
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 3007
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 3009
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-eqz v1, :cond_2

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 3010
    :cond_2
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 3014
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-nez v1, :cond_3

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 3015
    move-object v1, v0

    const/4 v2, -0x2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 3016
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 3019
    :cond_3
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-eqz v1, :cond_4

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 3020
    :cond_4
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 3024
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-nez v1, :cond_5

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 3025
    move-object v1, v0

    const/4 v2, -0x2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 3026
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 3029
    :cond_5
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 3030
    :cond_6
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 3031
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 3032
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 3033
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v1, :cond_7

    .line 3034
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 3036
    :cond_7
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v1, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 3038
    :cond_8
    return-void
.end method
