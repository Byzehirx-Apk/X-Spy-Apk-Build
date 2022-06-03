.class public Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>([Landroidx/lifecycle/GeneratedAdapter;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
    move-object v1, p1

    .local v1, "generatedAdapters":[Landroidx/lifecycle/GeneratedAdapter;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    .line 32
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 14

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
    move-object v1, p1

    .local v1, "source":Landroidx/lifecycle/LifecycleOwner;
    move-object/from16 v2, p2

    .local v2, "event":Landroidx/lifecycle/Lifecycle$Event;
    new-instance v8, Landroidx/lifecycle/MethodCallsLogger;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroidx/lifecycle/MethodCallsLogger;-><init>()V

    move-object v3, v8

    .line 37
    .local v3, "logger":Landroidx/lifecycle/MethodCallsLogger;
    move-object v8, v0

    iget-object v8, v8, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_0

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 38
    .local v7, "mGenerated":Landroidx/lifecycle/GeneratedAdapter;
    move-object v8, v7

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v3

    invoke-interface {v8, v9, v10, v11, v12}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    .line 37
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 40
    .end local v7    # "mGenerated":Landroidx/lifecycle/GeneratedAdapter;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 41
    .restart local v7    # "mGenerated":Landroidx/lifecycle/GeneratedAdapter;
    move-object v8, v7

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x1

    move-object v12, v3

    invoke-interface {v8, v9, v10, v11, v12}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    .line 40
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 43
    .end local v7    # "mGenerated":Landroidx/lifecycle/GeneratedAdapter;
    :cond_1
    return-void
.end method
