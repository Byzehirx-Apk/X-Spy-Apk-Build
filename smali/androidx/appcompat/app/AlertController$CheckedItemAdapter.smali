.class Landroidx/appcompat/app/AlertController$CheckedItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 10

    .prologue
    .line 1104
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$CheckedItemAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resource":I
    move v3, p3

    .local v3, "textViewResourceId":I
    move-object v4, p4

    .local v4, "objects":[Ljava/lang/CharSequence;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1105
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 4

    .prologue
    .line 1114
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$CheckedItemAdapter;
    move v1, p1

    .local v1, "position":I
    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AlertController$CheckedItemAdapter;
    return-wide v0
.end method

.method public hasStableIds()Z
    .locals 2

    .prologue
    .line 1109
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$CheckedItemAdapter;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AlertController$CheckedItemAdapter;
    return v0
.end method
