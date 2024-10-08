.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState$1;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;
    .locals 2
    .param p1, "var1"    # Landroid/os/Parcel;

    .line 10196
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/ClassLoader;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;
    .locals 1
    .param p1, "var1"    # Landroid/os/Parcel;
    .param p2, "var2"    # Ljava/lang/ClassLoader;

    .line 10200
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10194
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 10194
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;
    .locals 1
    .param p1, "var1"    # I

    .line 10204
    new-array v0, p1, [Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10194
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState$1;->newArray(I)[Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method
