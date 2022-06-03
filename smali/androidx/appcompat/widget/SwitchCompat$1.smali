.class final Landroidx/appcompat/widget/SwitchCompat$1;
.super Landroid/util/Property;
.source "SwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat$1;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroidx/appcompat/widget/SwitchCompat;)Ljava/lang/Float;
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat$1;
    move-object v1, p1

    .local v1, "object":Landroidx/appcompat/widget/SwitchCompat;
    move-object v2, v1

    iget v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat$1;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat$1;->get(Landroidx/appcompat/widget/SwitchCompat;)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat$1;
    return-object v0
.end method

.method public set(Landroidx/appcompat/widget/SwitchCompat;Ljava/lang/Float;)V
    .locals 5

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat$1;
    move-object v1, p1

    .local v1, "object":Landroidx/appcompat/widget/SwitchCompat;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Float;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 111
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    move-object v5, v2

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/SwitchCompat$1;->set(Landroidx/appcompat/widget/SwitchCompat;Ljava/lang/Float;)V

    return-void
.end method
