.class public Lgnu/kawa/slib/test$Mnrunner;
.super Ljava/lang/Object;
.source "testing.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/slib/testing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mnrunner"
.end annotation


# instance fields
.field public aux$Mnvalue:Ljava/lang/Object;

.field public count$Mnlist:Ljava/lang/Object;

.field public fail$Mncount:Ljava/lang/Object;

.field public fail$Mnlist:Ljava/lang/Object;

.field public fail$Mnsave:Ljava/lang/Object;

.field public group$Mnstack:Ljava/lang/Object;

.field public on$Mnbad$Mncount:Ljava/lang/Object;

.field public on$Mnbad$Mnend$Mnname:Ljava/lang/Object;

.field public on$Mnfinal:Ljava/lang/Object;

.field public on$Mngroup$Mnbegin:Ljava/lang/Object;

.field public on$Mngroup$Mnend:Ljava/lang/Object;

.field public on$Mntest$Mnbegin:Ljava/lang/Object;

.field public on$Mntest$Mnend:Ljava/lang/Object;

.field public pass$Mncount:Ljava/lang/Object;

.field public result$Mnalist:Ljava/lang/Object;

.field public run$Mnlist:Ljava/lang/Object;

.field public skip$Mncount:Ljava/lang/Object;

.field public skip$Mnlist:Ljava/lang/Object;

.field public skip$Mnsave:Ljava/lang/Object;

.field public total$Mncount:Ljava/lang/Object;

.field public xfail$Mncount:Ljava/lang/Object;

.field public xpass$Mncount:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
