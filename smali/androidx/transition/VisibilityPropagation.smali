.class public abstract Landroidx/transition/VisibilityPropagation;
.super Landroidx/transition/TransitionPropagation;
.source "VisibilityPropagation.java"


# static fields
.field private static final PROPNAME_VIEW_CENTER:Ljava/lang/String; = "android:visibilityPropagation:center"

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibilityPropagation:visibility"

.field private static final VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "android:visibilityPropagation:visibility"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "android:visibilityPropagation:center"

    aput-object v3, v1, v2

    sput-object v0, Landroidx/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Landroidx/transition/VisibilityPropagation;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/TransitionPropagation;-><init>()V

    return-void
.end method

.method private static getViewCoordinate(Landroidx/transition/TransitionValues;I)I
    .locals 5

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "values":Landroidx/transition/TransitionValues;
    move v1, p1

    .local v1, "coordinateIndex":I
    move-object v3, v0

    if-nez v3, :cond_0

    .line 107
    const/4 v3, -0x1

    move v0, v3

    .line 115
    .end local v0    # "values":Landroidx/transition/TransitionValues;
    :goto_0
    return v0

    .line 110
    .restart local v0    # "values":Landroidx/transition/TransitionValues;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:visibilityPropagation:center"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    move-object v2, v3

    .line 111
    .local v2, "coordinates":[I
    move-object v3, v2

    if-nez v3, :cond_1

    .line 112
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 115
    :cond_1
    move-object v3, v2

    move v4, v1

    aget v3, v3, v4

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public captureValues(Landroidx/transition/TransitionValues;)V
    .locals 12

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Landroidx/transition/VisibilityPropagation;
    move-object v1, p1

    .local v1, "values":Landroidx/transition/TransitionValues;
    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v2, v5

    .line 46
    .local v2, "view":Landroid/view/View;
    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:visibility:visibility"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v3, v5

    .line 47
    .local v3, "visibility":Ljava/lang/Integer;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 48
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, v5

    .line 50
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:visibilityPropagation:visibility"

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 51
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v4, v5

    .line 52
    .local v4, "loc":[I
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 53
    move-object v5, v4

    const/4 v6, 0x0

    move-object v10, v5

    move v11, v6

    move-object v5, v10

    move v6, v11

    move-object v7, v10

    move v8, v11

    aget v7, v7, v8

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 54
    move-object v5, v4

    const/4 v6, 0x0

    move-object v10, v5

    move v11, v6

    move-object v5, v10

    move v6, v11

    move-object v7, v10

    move v8, v11

    aget v7, v7, v8

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 55
    move-object v5, v4

    const/4 v6, 0x1

    move-object v10, v5

    move v11, v6

    move-object v5, v10

    move v6, v11

    move-object v7, v10

    move v8, v11

    aget v7, v7, v8

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 56
    move-object v5, v4

    const/4 v6, 0x1

    move-object v10, v5

    move v11, v6

    move-object v5, v10

    move v6, v11

    move-object v7, v10

    move v8, v11

    aget v7, v7, v8

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 57
    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:visibilityPropagation:center"

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 58
    return-void
.end method

.method public getPropagationProperties()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/transition/VisibilityPropagation;
    sget-object v1, Landroidx/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/VisibilityPropagation;
    return-object v0
.end method

.method public getViewVisibility(Landroidx/transition/TransitionValues;)I
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/transition/VisibilityPropagation;
    move-object v1, p1

    .local v1, "values":Landroidx/transition/TransitionValues;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 74
    const/16 v3, 0x8

    move v0, v3

    .line 80
    .end local v0    # "this":Landroidx/transition/VisibilityPropagation;
    :goto_0
    return v0

    .line 76
    .restart local v0    # "this":Landroidx/transition/VisibilityPropagation;
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:visibilityPropagation:visibility"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    .line 77
    .local v2, "visibility":Ljava/lang/Integer;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 78
    const/16 v3, 0x8

    move v0, v3

    goto :goto_0

    .line 80
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getViewX(Landroidx/transition/TransitionValues;)I
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/transition/VisibilityPropagation;
    move-object v1, p1

    .local v1, "values":Landroidx/transition/TransitionValues;
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/transition/VisibilityPropagation;
    return v0
.end method

.method public getViewY(Landroidx/transition/TransitionValues;)I
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Landroidx/transition/VisibilityPropagation;
    move-object v1, p1

    .local v1, "values":Landroidx/transition/TransitionValues;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/transition/VisibilityPropagation;
    return v0
.end method
