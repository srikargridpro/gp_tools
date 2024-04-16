directories=(
    "GridPro_WS"
    "GridPro_WS/GridPro_forms"
    "GridPro_WS/GridPro_gui"
    "GridPro_WS/GridPro_headers"
    "GridPro_WS/GridPro_headers/gui_headers"
    "GridPro_WS/GridPro_headers/grid_headers"
    "GridPro_WS/GridPro_headers/topology_headers"
    "GridPro_WS/GridPro_libraries"
    "GridPro_WS/GridPro_headers/header_only_libraries"
)

for dir in "${directories[@]}"; do
    cd "$dir"
    git checkout -f V9.0.Enhancements
    cd -
done

python3 gridpro_repo.py pull
