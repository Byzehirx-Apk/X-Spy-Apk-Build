.class Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "FullLifecycleObserverAdapter.java"

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mObserver:Landroidx/lifecycle/FullLifecycleObserver;


# direct methods
.method constructor <init>(Landroidx/lifecycle/FullLifecycleObserver;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/FullLifecycleObserverAdapter;
    move-object v1, p1

    .local v1, "observer":Landroidx/lifecycle/FullLifecycleObserver;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    .line 25
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/FullLifecycleObserverAdapter;
    move-object v1, p1

    .local v1, "source":Landroidx/lifecycle/LifecycleOwner;
    move-object v2, p2

    .local v2, "event":Landroidx/lifecycle/Lifecycle$Event;
    sget-object v3, Landroidx/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 31
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/lifecycle/FullLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    .line 32
    goto :goto_0

    .line 34
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/lifecycle/FullLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    .line 35
    goto :goto_0

    .line 37
    :pswitch_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/lifecycle/FullLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    .line 38
    goto :goto_0

    .line 40
    :pswitch_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/lifecycle/FullLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    .line 41
    goto :goto_0

    .line 43
    :pswitch_4
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/lifecycle/FullLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    .line 44
    goto :goto_0

    .line 46
    :pswitch_5
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/lifecycle/FullLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    .line 47
    goto :goto_0

    .line 49
    :pswitch_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "ON_ANY must not been send by anybody"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
