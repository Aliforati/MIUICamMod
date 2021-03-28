.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo0o0/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/film/FragmentFilmGallery;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmGallery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo0o0/OooO0o0;->OooO00o:Lcom/android/camera/fragment/film/FragmentFilmGallery;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo0o0/OooO0o0;->OooO00o:Lcom/android/camera/fragment/film/FragmentFilmGallery;

    check-cast p1, Lcom/android/camera/fragment/film/FilmList;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->OooO00o(Lcom/android/camera/fragment/film/FilmList;)V

    return-void
.end method
