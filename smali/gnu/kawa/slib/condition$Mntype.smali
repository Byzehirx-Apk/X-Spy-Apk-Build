.class public Lgnu/kawa/slib/condition$Mntype;
.super Ljava/lang/Object;
.source "conditions.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/slib/conditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mntype"
.end annotation


# instance fields
.field public all$Mnfields:Ljava/lang/Object;

.field public fields:Ljava/lang/Object;

.field public name:Ljava/lang/Object;

.field public supertype:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/kawa/slib/condition$Mntype;->name:Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/kawa/slib/condition$Mntype;->supertype:Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/kawa/slib/condition$Mntype;->fields:Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/condition$Mntype;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "#<condition-type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v2

    .line 52
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/condition$Mntype;->name:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/condition$Mntype;
    return-object v0
.end method
