.class public final Landroidx/core/view/DragAndDropPermissionsCompat;
.super Ljava/lang/Object;
.source "DragAndDropPermissionsCompat.java"


# instance fields
.field private mDragAndDropPermissions:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragAndDropPermissionsCompat;
    move-object v1, p1

    .local v1, "dragAndDropPermissions":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public static request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "dragEvent":Landroid/view/DragEvent;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 45
    move-object v3, v0

    move-object v4, v1

    .line 46
    invoke-virtual {v3, v4}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v3

    move-object v2, v3

    .line 47
    .local v2, "dragAndDropPermissions":Landroid/view/DragAndDropPermissions;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 48
    new-instance v3, Landroidx/core/view/DragAndDropPermissionsCompat;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/core/view/DragAndDropPermissionsCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    .line 51
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "dragAndDropPermissions":Landroid/view/DragAndDropPermissions;
    :goto_0
    return-object v0

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragAndDropPermissionsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 59
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    check-cast v1, Landroid/view/DragAndDropPermissions;

    invoke-virtual {v1}, Landroid/view/DragAndDropPermissions;->release()V

    .line 61
    :cond_0
    return-void
.end method
