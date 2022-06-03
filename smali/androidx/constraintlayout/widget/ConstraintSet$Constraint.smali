.class Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Constraint"
.end annotation


# static fields
.field static final UNSET:I = -0x1


# instance fields
.field public alpha:F

.field public applyElevation:Z

.field public baselineToBaseline:I

.field public bottomMargin:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public elevation:F

.field public endMargin:I

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

.field public heightDefault:I

.field public heightMax:I

.field public heightMin:I

.field public heightPercent:F

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field public horizontalWeight:F

.field public leftMargin:I

.field public leftToLeft:I

.field public leftToRight:I

.field public mBarrierAllowsGoneWidgets:Z

.field public mBarrierDirection:I

.field public mHeight:I

.field public mHelperType:I

.field mIsGuideline:Z

.field public mReferenceIdString:Ljava/lang/String;

.field public mReferenceIds:[I

.field mViewId:I

.field public mWidth:I

.field public orientation:I

.field public rightMargin:I

.field public rightToLeft:I

.field public rightToRight:I

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public startMargin:I

.field public startToEnd:I

.field public startToStart:I

.field public topMargin:I

.field public topToBottom:I

.field public topToTop:I

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F

.field public verticalBias:F

.field public verticalChainStyle:I

.field public verticalWeight:F

.field public visibility:I

.field public widthDefault:I

.field public widthMax:I

.field public widthMin:I

.field public widthPercent:F


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 359
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 364
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 365
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    .line 366
    move-object v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 368
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 369
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 370
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 371
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 372
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 373
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 374
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 375
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 376
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 378
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 379
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 380
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 381
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 383
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 384
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    .line 385
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 387
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    .line 388
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    .line 389
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    .line 391
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 392
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 394
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    .line 395
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 396
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 397
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 398
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 399
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 400
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 401
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    .line 402
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 403
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    .line 404
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    .line 405
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 406
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    .line 407
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    .line 408
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 409
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 410
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 411
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 412
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    .line 413
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    .line 414
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    .line 415
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    .line 416
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    .line 417
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    .line 418
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    .line 419
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    .line 420
    move-object v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 421
    move-object v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 422
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 423
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 424
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    .line 425
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    .line 426
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedHeight:Z

    .line 427
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    .line 428
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    .line 429
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    .line 430
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    .line 431
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    .line 432
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    .line 433
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    .line 434
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    .line 435
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    .line 436
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 437
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v1, p1

    .local v1, "x0":Landroidx/constraintlayout/widget/ConstraintSet$1;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 6

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "x0":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move v1, p1

    .local v1, "x1":I
    move-object v2, p2

    .local v2, "x2":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 8

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "x0":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v1, p1

    .local v1, "x1":Landroidx/constraintlayout/widget/ConstraintHelper;
    move v2, p2

    .local v2, "x2":I
    move-object v3, p3

    .local v3, "x3":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 6

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "x0":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move v1, p1

    .local v1, "x1":I
    move-object v2, p2

    .local v2, "x2":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    return-void
.end method

.method private fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 6

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move v1, p1

    .local v1, "viewId":I
    move-object v2, p2

    .local v2, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 554
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 555
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 556
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 557
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 558
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 559
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 560
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 561
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 562
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 563
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 564
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 565
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 566
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 568
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 569
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    .line 570
    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 572
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    .line 573
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    .line 574
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    .line 576
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 577
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 578
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    .line 579
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 580
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 581
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    .line 582
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    .line 583
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    .line 584
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 585
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 586
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 587
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 588
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 589
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 590
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 591
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 592
    move-object v4, v0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    .line 593
    move-object v4, v0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedHeight:Z

    .line 594
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    .line 595
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    .line 596
    move-object v4, v0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    .line 597
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    .line 598
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    .line 599
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    .line 600
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    .line 601
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    .line 602
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    .line 604
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move v3, v4

    .line 605
    .local v3, "currentapiVersion":I
    move v4, v3

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 606
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getMarginEnd()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 607
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getMarginStart()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 609
    :cond_0
    return-void
.end method

.method private fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 6

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move v1, p1

    .local v1, "viewId":I
    move-object v2, p2

    .local v2, "param":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 537
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    .line 538
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    .line 539
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    .line 540
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    .line 541
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    .line 542
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    .line 543
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 544
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 545
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 546
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 547
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    .line 548
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    .line 549
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    .line 550
    return-void
.end method

.method private fillFromConstraints(Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 8

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v1, p1

    .local v1, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    move v2, p2

    .local v2, "viewId":I
    move-object v3, p3

    .local v3, "param":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    move-object v5, v0

    move v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 527
    move-object v5, v1

    instance-of v5, v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v5, :cond_0

    .line 528
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    .line 529
    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    move-object v4, v5

    .line 530
    .local v4, "barrier":Landroidx/constraintlayout/widget/Barrier;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 531
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getReferencedIds()[I

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 533
    .end local v4    # "barrier":Landroidx/constraintlayout/widget/Barrier;
    :cond_0
    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 4

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v1, p1

    .local v1, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 613
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 614
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 615
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 617
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 618
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 619
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 620
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 622
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 624
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 625
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 626
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 627
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 629
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 630
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 631
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 632
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 633
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 634
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 636
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 637
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 639
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 640
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 641
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 643
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 644
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 645
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 646
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 647
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 648
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 649
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 650
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 651
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedHeight:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 652
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 653
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 654
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 655
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 656
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 657
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 658
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 659
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 660
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 661
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 662
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 663
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 664
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 665
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 668
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 669
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 670
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    .line 673
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 674
    return-void
.end method

.method public clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 6

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    move-object v1, v2

    .line 443
    .local v1, "clone":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 444
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    .line 445
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    .line 446
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 447
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    .line 448
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 449
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 450
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 451
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 452
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 453
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 454
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 455
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 456
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 457
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 458
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 459
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 460
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 461
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 462
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 463
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    .line 464
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 465
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 466
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 467
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 468
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 469
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 470
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 471
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 472
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    .line 473
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 474
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 475
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 476
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 477
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 478
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 479
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    .line 480
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 481
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    .line 482
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    .line 483
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 484
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    .line 485
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    .line 486
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 487
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 488
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 489
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 490
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    .line 491
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    .line 492
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    .line 493
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    .line 494
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    .line 495
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    .line 496
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    .line 497
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    .line 498
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 499
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 500
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 501
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 502
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    .line 503
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    .line 504
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedHeight:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedHeight:Z

    .line 505
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    .line 506
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    .line 507
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    .line 508
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    .line 509
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    .line 510
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    .line 511
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    .line 512
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    .line 513
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 514
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    .line 515
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    if-eqz v2, :cond_0

    .line 516
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 518
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    .line 519
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    .line 520
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    .line 521
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    .line 522
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    return-object v0
.end method
