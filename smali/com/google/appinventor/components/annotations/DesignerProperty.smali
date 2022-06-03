.class public interface abstract annotation Lcom/google/appinventor/components/annotations/DesignerProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = false
        defaultValue = ""
        editorArgs = {}
        editorType = "text"
        propertyType = "common"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract alwaysSend()Z
.end method

.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract editorArgs()[Ljava/lang/String;
.end method

.method public abstract editorType()Ljava/lang/String;
.end method

.method public abstract propertyType()Ljava/lang/String;
.end method
