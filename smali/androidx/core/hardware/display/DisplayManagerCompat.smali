.class public final Landroidx/core/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.java"


# static fields
.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field private static final sInstances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroidx/core/hardware/display/DisplayManagerCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/display/DisplayManagerCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/core/hardware/display/DisplayManagerCompat;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    sget-object v4, Landroidx/core/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 63
    :try_start_0
    sget-object v4, Landroidx/core/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/hardware/display/DisplayManagerCompat;

    move-object v2, v4

    .line 64
    .local v2, "instance":Landroidx/core/hardware/display/DisplayManagerCompat;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 65
    new-instance v4, Landroidx/core/hardware/display/DisplayManagerCompat;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/core/hardware/display/DisplayManagerCompat;-><init>(Landroid/content/Context;)V

    move-object v2, v4

    .line 66
    sget-object v4, Landroidx/core/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    :cond_0
    move-object v4, v2

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 69
    .end local v2    # "instance":Landroidx/core/hardware/display/DisplayManagerCompat;
    .restart local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/display/DisplayManagerCompat;
    move v1, p1

    .local v1, "displayId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 84
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    move v4, v1

    .line 85
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    move-object v0, v3

    .line 93
    .end local v0    # "this":Landroidx/core/hardware/display/DisplayManagerCompat;
    :goto_0
    return-object v0

    .line 88
    .restart local v0    # "this":Landroidx/core/hardware/display/DisplayManagerCompat;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 89
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object v2, v3

    .line 90
    .local v2, "display":Landroid/view/Display;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    move v4, v1

    if-ne v3, v4, :cond_1

    .line 91
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 93
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/display/DisplayManagerCompat;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 104
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 105
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    move-object v0, v2

    .line 110
    .end local v0    # "this":Landroidx/core/hardware/display/DisplayManagerCompat;
    .local v1, "display":Landroid/view/Display;
    :goto_0
    return-object v0

    .line 108
    .end local v1    # "display":Landroid/view/Display;
    .restart local v0    # "this":Landroidx/core/hardware/display/DisplayManagerCompat;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 109
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object v1, v2

    .line 110
    .restart local v1    # "display":Landroid/view/Display;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/Display;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v1

    aput-object v5, v3, v4

    move-object v0, v2

    goto :goto_0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/display/DisplayManagerCompat;
    move-object v1, p1

    .local v1, "category":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 132
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    move-object v4, v1

    .line 133
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    move-object v0, v3

    .line 141
    .end local v0    # "this":Landroidx/core/hardware/display/DisplayManagerCompat;
    :goto_0
    return-object v0

    .line 135
    .restart local v0    # "this":Landroidx/core/hardware/display/DisplayManagerCompat;
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 136
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/view/Display;

    move-object v0, v3

    goto :goto_0

    .line 139
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 140
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object v2, v3

    .line 141
    .local v2, "display":Landroid/view/Display;
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/Display;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v2

    aput-object v6, v4, v5

    move-object v0, v3

    goto :goto_0
.end method
