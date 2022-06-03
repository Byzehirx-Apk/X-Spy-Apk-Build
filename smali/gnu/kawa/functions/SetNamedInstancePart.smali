.class Lgnu/kawa/functions/SetNamedInstancePart;
.super Lgnu/mapping/Procedure2;
.source "GetNamedInstancePart.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field pname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetNamedInstancePart;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure2;-><init>()V

    .line 93
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v3, "gnu.kawa.functions.CompileNamedPart:validateSetNamedInstancePart"

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/functions/SetNamedInstancePart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetNamedInstancePart;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/functions/SetNamedInstancePart;-><init>()V

    .line 100
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/functions/SetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetNamedInstancePart;
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lgnu/kawa/reflect/SlotSet;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/SetNamedInstancePart;
    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetNamedInstancePart;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgnu/kawa/functions/SetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setPartName(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetNamedInstancePart;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set-instance-part:."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/kawa/functions/SetNamedInstancePart;->setName(Ljava/lang/String;)V

    .line 106
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetNamedInstancePart;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
