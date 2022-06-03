.class public Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealScrimColorProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/google/android/material/circularreveal/CircularRevealWidget;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/google/android/material/circularreveal/CircularRevealWidget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 227
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "circularRevealScrimColor"

    invoke-direct {v1, v2}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    const-class v3, Ljava/lang/Integer;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 232
    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
    move-object v1, p1

    .local v1, "object":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getCircularRevealScrimColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-virtual {v2, v3}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->get(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
    return-object v0
.end method

.method public set(Lcom/google/android/material/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V
    .locals 5

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
    move-object v1, p1

    .local v1, "object":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Integer;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 242
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->set(Lcom/google/android/material/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V

    return-void
.end method
