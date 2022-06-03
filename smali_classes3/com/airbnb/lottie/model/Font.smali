.class public Lcom/airbnb/lottie/model/Font;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final ascent:F

.field private final family:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final style:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 7

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/Font;
    move-object v1, p1

    .local v1, "family":Ljava/lang/String;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "style":Ljava/lang/String;
    move v4, p4

    .local v4, "ascent":F
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 16
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    .line 17
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/airbnb/lottie/model/Font;->name:Ljava/lang/String;

    .line 18
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    .line 19
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/airbnb/lottie/model/Font;->ascent:F

    .line 20
    return-void
.end method


# virtual methods
.method getAscent()F
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/Font;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/model/Font;->ascent:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/Font;
    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/Font;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/Font;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/Font;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/Font;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/Font;
    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/Font;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/Font;
    return-object v0
.end method
