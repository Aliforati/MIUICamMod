.class public interface abstract annotation LOooO0o0/OooO00o/OooO00o/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LOooO0o0/OooO00o/OooO00o/OooO00o/OooO00o;
        source = "The method argument (if parameter was annotated) or this container (if instance method was annotated)"
        sourceIsContainer = false
        target = "This container (if the parameter was annotated) or the return value (if instance method was annotated)"
        targetIsContainer = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final OooOOO:Ljava/lang/String; = "this"

.field public static final OooOOO0:Ljava/lang/String; = "The method argument (if parameter was annotated) or this container (if instance method was annotated)"

.field public static final OooOOOO:Ljava/lang/String; = "This container (if the parameter was annotated) or the return value (if instance method was annotated)"

.field public static final OooOOOo:Ljava/lang/String; = "The return value of this method"

.field public static final OooOOo0:Ljava/lang/String; = "this"


# virtual methods
.method public abstract source()Ljava/lang/String;
.end method

.method public abstract sourceIsContainer()Z
.end method

.method public abstract target()Ljava/lang/String;
.end method

.method public abstract targetIsContainer()Z
.end method
