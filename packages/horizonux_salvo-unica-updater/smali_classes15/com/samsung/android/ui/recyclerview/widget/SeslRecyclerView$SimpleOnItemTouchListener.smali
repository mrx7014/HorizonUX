.class public Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SimpleOnItemTouchListener;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnItemTouchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10260
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # Landroid/view/MotionEvent;

    .line 10263
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 10267
    return-void
.end method

.method public onTouchEvent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # Landroid/view/MotionEvent;

    .line 10270
    return-void
.end method
