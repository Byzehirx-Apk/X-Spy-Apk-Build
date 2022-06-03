.class public Lcom/google/android/material/animation/ChildrenAlphaProperty;
.super Landroid/util/Property;
.source "ChildrenAlphaProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/view/ViewGroup;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHILDREN_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/material/animation/ChildrenAlphaProperty;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "childrenAlpha"

    invoke-direct {v1, v2}, Lcom/google/android/material/animation/ChildrenAlphaProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ChildrenAlphaProperty;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    const-class v3, Ljava/lang/Float;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public get(Landroid/view/ViewGroup;)Ljava/lang/Float;
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ChildrenAlphaProperty;
    move-object v1, p1

    .local v1, "object":Landroid/view/ViewGroup;
    move-object v3, v1

    sget v4, Lcom/google/android/material/R$id;->mtrl_internal_children_alpha_tag:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    move-object v2, v3

    .line 47
    .local v2, "alpha":Ljava/lang/Float;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 48
    move-object v3, v2

    move-object v0, v3

    .line 50
    .end local v0    # "this":Lcom/google/android/material/animation/ChildrenAlphaProperty;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/animation/ChildrenAlphaProperty;
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ChildrenAlphaProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/ChildrenAlphaProperty;->get(Landroid/view/ViewGroup;)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/animation/ChildrenAlphaProperty;
    return-object v0
.end method

.method public set(Landroid/view/ViewGroup;Ljava/lang/Float;)V
    .locals 10

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ChildrenAlphaProperty;
    move-object v1, p1

    .local v1, "object":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Float;
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v3, v7

    .line 58
    .local v3, "alpha":F
    move-object v7, v1

    sget v8, Lcom/google/android/material/R$id;->mtrl_internal_children_alpha_tag:I

    move v9, v3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 60
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v5, v7

    .local v5, "count":I
    :goto_0
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_0

    .line 61
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 62
    .local v6, "child":Landroid/view/View;
    move-object v7, v6

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 60
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    .end local v6    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/ChildrenAlphaProperty;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v2

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/animation/ChildrenAlphaProperty;->set(Landroid/view/ViewGroup;Ljava/lang/Float;)V

    return-void
.end method
