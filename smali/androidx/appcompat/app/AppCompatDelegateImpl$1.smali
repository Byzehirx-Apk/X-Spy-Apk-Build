.class final Landroidx/appcompat/app/AppCompatDelegateImpl$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$1;->val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private shouldWrapException(Ljava/lang/Throwable;)Z
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$1;
    move-object v1, p1

    .local v1, "throwable":Ljava/lang/Throwable;
    move-object v3, v1

    instance-of v3, v3, Landroid/content/res/Resources$NotFoundException;

    if-eqz v3, :cond_2

    .line 149
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 150
    .local v2, "message":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    const-string/jumbo v4, "drawable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    const-string/jumbo v4, "Drawable"

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 153
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$1;
    .end local v2    # "message":Ljava/lang/String;
    :goto_1
    return v0

    .line 151
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$1;
    .restart local v2    # "message":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 153
    .end local v2    # "message":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$1;
    move-object v1, p1

    .local v1, "thread":Ljava/lang/Thread;
    move-object v2, p2

    .local v2, "thowable":Ljava/lang/Throwable;
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$1;->shouldWrapException(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    .line 138
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 139
    .local v3, "wrapped":Ljava/lang/Throwable;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 140
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 141
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$1;->val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 142
    .line 145
    .end local v3    # "wrapped":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 143
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$1;->val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
