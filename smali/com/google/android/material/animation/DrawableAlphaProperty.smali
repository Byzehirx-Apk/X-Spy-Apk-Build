.class public Lcom/google/android/material/animation/DrawableAlphaProperty;
.super Landroid/util/Property;
.source "DrawableAlphaProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final alphaCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/material/animation/DrawableAlphaProperty;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/android/material/animation/DrawableAlphaProperty;-><init>()V

    sput-object v0, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/DrawableAlphaProperty;
    move-object v1, v0

    const-class v2, Ljava/lang/Integer;

    const-string/jumbo v3, "drawableAlphaCompat"

    invoke-direct {v1, v2, v3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 37
    move-object v1, v0

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/animation/DrawableAlphaProperty;->alphaCache:Ljava/util/WeakHashMap;

    .line 41
    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/DrawableAlphaProperty;
    move-object v1, p1

    .local v1, "object":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 46
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .line 51
    .end local v0    # "this":Lcom/google/android/material/animation/DrawableAlphaProperty;
    :goto_0
    return-object v0

    .line 48
    .restart local v0    # "this":Lcom/google/android/material/animation/DrawableAlphaProperty;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/animation/DrawableAlphaProperty;->alphaCache:Ljava/util/WeakHashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/animation/DrawableAlphaProperty;->alphaCache:Ljava/util/WeakHashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v0, v2

    goto :goto_0

    .line 51
    :cond_1
    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/DrawableAlphaProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/DrawableAlphaProperty;->get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/animation/DrawableAlphaProperty;
    return-object v0
.end method

.method public set(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/DrawableAlphaProperty;
    move-object v1, p1

    .local v1, "object":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Integer;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_0

    .line 57
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/animation/DrawableAlphaProperty;->alphaCache:Ljava/util/WeakHashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 61
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/DrawableAlphaProperty;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/Drawable;

    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/animation/DrawableAlphaProperty;->set(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    return-void
.end method
