.class Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Landroidx/loader/content/ModernAsyncTask;


# direct methods
.method varargs constructor <init>(Landroidx/loader/content/ModernAsyncTask;[Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/ModernAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;, "Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult<TData;>;"
    move-object v1, p1

    .local v1, "task":Landroidx/loader/content/ModernAsyncTask;
    move-object v2, p2

    .local v2, "data":[Ljava/lang/Object;, "[TData;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 529
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidx/loader/content/ModernAsyncTask;

    .line 530
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 531
    return-void
.end method
