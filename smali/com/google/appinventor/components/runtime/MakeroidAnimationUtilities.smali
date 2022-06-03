.class public Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    helpUrl = "https://docs.kodular.io/components/drawing-and-animation/animation-util/"
    iconName = "images/animationUtil.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:F

.field private UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 36
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:F

    .line 37
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

    .line 43
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->context:Landroid/content/Context;

    .line 45
    const-string/jumbo v2, "Makeroid Animation Utilities"

    const-string/jumbo v3, "Makeroid Animation Utilities Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 46
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    .locals 14

    .prologue
    .line 287
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x2

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v4

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v5

    aput v12, v10, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object v2, v7

    .line 288
    move-object v7, v3

    const-string/jumbo v8, "rotation"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 289
    move-object v7, v1

    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

    if-eqz v7, :cond_1

    .line 290
    move-object v7, v2

    new-instance v8, Landroid/view/animation/BounceInterpolator;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    :cond_0
    :goto_0
    move-object v7, v2

    move v8, v6

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 296
    move-object v7, v2

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 297
    return-void

    .line 292
    :cond_1
    move-object v7, v2

    new-instance v8, Landroid/view/animation/OvershootInterpolator;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    iget v10, v10, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:F

    invoke-direct {v9, v10}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method


# virtual methods
.method public BounceHorizontal(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFI)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a horizontal bounce animation. The duration is set in millisecond. Use as example for 1 second \'1000\'."
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    .line 175
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

    .line 176
    move-object v5, v0

    move-object v6, v1

    const-string/jumbo v7, "translationX"

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 179
    const-string/jumbo v5, "Makeroid Animation Utilities"

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 180
    move-object v5, v0

    const/16 v6, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "BounceHorizontal"

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    goto :goto_0
.end method

.method public BounceVertical(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFI)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a vertical bounce animation. The duration is set in millisecond. Use as example for 1 second \'1000\'."
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    .line 191
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

    .line 192
    move-object v5, v0

    move-object v6, v1

    const-string/jumbo v7, "translationY"

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 195
    const-string/jumbo v5, "Makeroid Animation Utilities"

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 196
    move-object v5, v0

    const/16 v6, 0x9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "BounceVertical"

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    goto :goto_0
.end method

.method public Error(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is triggered when there was a error catched. Possible values for the error code and method: 1 \'GetLeftPosition\', 2 \'GetTopPosition\', 3 \'GetRightPosition\', 4 \'GetBottomPosition\', 5 \'GetXPosition\', 6 \'GetYPosition\', 7 \'Rotation\', 8 \'BounceHorizontal\', 9 \'BounceVertical\', 10 \'OvershootHorizontal\', 11 \'OvershootVertical\', 12 \'Zoom\'. The error message will return you the error reason."
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const-string/jumbo v5, "Error"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    .line 66
    return-void
.end method

.method public GetBottomPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bottom position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 120
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 118
    const-string/jumbo v3, "Makeroid Animation Utilities"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 119
    move-object v3, v0

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "GetBottomPosition"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    const/16 v3, -0x270f

    move v0, v3

    goto :goto_0
.end method

.method public GetLeftPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the left position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 78
    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 76
    const-string/jumbo v3, "Makeroid Animation Utilities"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 77
    move-object v3, v0

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "GetLeftPosition"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    const/16 v3, -0x270f

    move v0, v3

    goto :goto_0
.end method

.method public GetRightPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the right position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getRight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 106
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 104
    const-string/jumbo v3, "Makeroid Animation Utilities"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 105
    move-object v3, v0

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "GetRightPosition"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    const/16 v3, -0x270f

    move v0, v3

    goto :goto_0
.end method

.method public GetTopPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the top position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/view/View;->getTop()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 92
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 90
    const-string/jumbo v3, "Makeroid Animation Utilities"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 91
    move-object v3, v0

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "GetTopPosition"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    const/16 v3, -0x270f

    move v0, v3

    goto :goto_0
.end method

.method public GetXPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the x position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getX()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    float-to-int v3, v3

    move v0, v3

    .line 134
    :goto_0
    return v0

    .line 130
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 132
    const-string/jumbo v3, "Makeroid Animation Utilities"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 133
    move-object v3, v0

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "GetXPosition"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    const/16 v3, -0x270f

    move v0, v3

    goto :goto_0
.end method

.method public GetYPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the y position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Landroid/view/View;->getY()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    float-to-int v3, v3

    move v0, v3

    .line 148
    :goto_0
    return v0

    .line 144
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 146
    const-string/jumbo v3, "Makeroid Animation Utilities"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 147
    move-object v3, v0

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "GetYPosition"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    const/16 v3, -0x270f

    move v0, v3

    goto :goto_0
.end method

.method public OvershootHorizontal(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFIF)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a horizontal overshoot animation. If \'tension\' is set to 0 you will not see a overshoot animation. Then you will see just a simple deceleration animation. The duration is set in millisecond. Use as example for 1 second \'1000\'."
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v6

    move-object v1, v6

    .line 209
    move-object v6, v0

    move v7, v5

    iput v7, v6, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:F

    .line 210
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

    .line 211
    move-object v6, v0

    move-object v7, v1

    const-string/jumbo v8, "translationX"

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 214
    const-string/jumbo v6, "Makeroid Animation Utilities"

    move-object v7, v2

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 215
    move-object v6, v0

    const/16 v7, 0xa

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "OvershootHorizontal"

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    goto :goto_0
.end method

.method public OvershootVertical(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFIF)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a vertical overshoot animation. If \'tension\' is set to 0 you will not see a overshoot animation. Then you will see just a simple deceleration animation. The duration is set in millisecond. Use as example for 1 second \'1000\'."
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v6

    move-object v1, v6

    .line 228
    move-object v6, v0

    move v7, v5

    iput v7, v6, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:F

    .line 229
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

    .line 230
    move-object v6, v0

    move-object v7, v1

    const-string/jumbo v8, "translationY"

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 233
    const-string/jumbo v6, "Makeroid Animation Utilities"

    move-object v7, v2

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 234
    move-object v6, v0

    const/16 v7, 0xb

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "OvershootVertical"

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    goto :goto_0
.end method

.method public Rotation(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFI)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a rotation on any component. Use as example in \'rotation Start Degrees\' 0, in \'rotation End Degrees\' 360 and in \'duration\' 300 (millisecond) to run a clockwise, 360 degress animation. You can also use negative numbers for the degress."
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    .line 159
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

    .line 160
    move-object v5, v0

    move-object v6, v1

    const-string/jumbo v7, "rotation"

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 163
    const-string/jumbo v5, "Makeroid Animation Utilities"

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 164
    move-object v5, v0

    const/4 v6, 0x7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Rotation"

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    goto :goto_0
.end method

.method public Zoom(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFI)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a zoom animation.  \'tension\' is set to 0 you will not see a overshoot animation. Then you will see just a simple deceleration animation. The duration is set in millisecond. Use as example for 1 second \'1000\'."
    .end annotation

    .prologue
    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v5

    .line 247
    move v6, v2

    move v2, v6

    move-object v1, v5

    .line 1300
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move v7, v2

    move v8, v3

    move v9, v2

    move v10, v3

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    .line 1301
    move-object v2, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1302
    move-object v5, v2

    move v6, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1303
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 250
    const-string/jumbo v5, "Makeroid Animation Utilities"

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 251
    move-object v5, v0

    const/16 v6, 0xc

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Zoom"

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    goto :goto_0
.end method
