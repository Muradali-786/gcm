import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../../core/theme/app_color.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/enums.dart';

class TableRowData {
  final List<TableRowCells> cells;

  TableRowData({required this.cells});
}

class TableRowCells {
  final String field;
  final dynamic value;

  TableRowCells({required this.field, required this.value});
}

final tableData = TableData(
  headers: [
    TableHeader(
        title: 'Customer Id', field: 'Customer Id', type: TableColumnType.text),
    TableHeader(
        title: 'Customer Name',
        field: 'Customer Name',
        type: TableColumnType.text),
    TableHeader(
        title: 'Customer Age',
        field: 'Customer Age',
        type: TableColumnType.text),
    TableHeader(
        title: 'Branch Code', field: 'Branch Code', type: TableColumnType.text),
  ],
  rows: List.generate(8, (index) {
    return TableRowData(
      cells: [
        TableRowCells(field: 'Customer Id', value: "123"),
        TableRowCells(field: 'Customer Name', value: "Murad"),
        TableRowCells(field: 'Customer Age', value: "23"),
        TableRowCells(field: 'Branch Code', value: "19012"),
      ],
    );
  }),
);

final ucdTableData = TableData(
  headers: [
    TableHeader(
      title: 'Date',
      field: 'date',
      type: TableColumnType.text,
    ),
    TableHeader(
      title: 'Customer Id',
      field: 'customerId',
      type: TableColumnType.number,
    ),
    TableHeader(
        title: 'Customer Name',
        field: 'customerName',
        type: TableColumnType.text),
    TableHeader(
      title: 'Branch Name',
      field: 'branchName',
      type: TableColumnType.text,
    ),
    TableHeader(
      title: 'Quantity',
      field: 'quantity',
      type: TableColumnType.number,
    ),
    TableHeader(
      title: 'Rate',
      field: 'rate',
      type: TableColumnType.number,
    ),
    TableHeader(
      title: 'Quantity Rate',
      field: 'quantityRate',
      type: TableColumnType.number,
    ),
    TableHeader(
      title: 'Freight',
      field: 'freight',
      type: TableColumnType.number,
    ),
    TableHeader(
      title: 'Labour',
      field: 'labour',
      type: TableColumnType.number,
    ),
    TableHeader(
      title: 'Fuel & Travel',
      field: 'fuel & Travel',
      type: TableColumnType.number,
    ),
    TableHeader(
      title: 'Total Cost',
      field: 'totalCost',
      type: TableColumnType.number,
    ),
    TableHeader(
      title: 'Contracted Rate',
      field: 'contractedRate',
      type: TableColumnType.number,
    ),
    TableHeader(
      title: 'Variance',
      field: 'variance',
      type: TableColumnType.number,
    ),
    TableHeader(
        title: 'Collection Time',
        field: 'collectionTime',
        type: TableColumnType.text),
    TableHeader(
      title: 'Location',
      field: 'location',
      type: TableColumnType.text,
    ),
    TableHeader(
      title: 'Team Responsible',
      field: 'teamResponsible',
      type: TableColumnType.text,
    ),
    TableHeader(
      title: 'Collected By',
      field: 'collectedBy',
      type: TableColumnType.text,
    ),
    TableHeader(
      title: 'Cash Control',
      field: 'cashControl',
      type: TableColumnType.text,
    ),
  ],
  rows: [
    for (int i = 0; i < 10; i++)
      TableRowData(
        cells: [
          TableRowCells(field: 'date', value: '2024-10-11'),
          TableRowCells(field: 'customerId', value: 123 + i),
          TableRowCells(field: 'customerName', value: 'Customer $i'),
          TableRowCells(field: 'branchName', value: 'Branch A'),
          TableRowCells(field: 'quantity', value: 50.0 + i),
          TableRowCells(field: 'rate', value: 100.0),
          TableRowCells(field: 'quantityRate', value: 5000.0 + (i * 100)),
          TableRowCells(field: 'freight', value: 200.0),
          TableRowCells(field: 'labour', value: 150.0),
          TableRowCells(field: 'fuelTravel', value: 300.0),
          TableRowCells(field: 'totalCost', value: 5650.0 + (i * 100)),
          TableRowCells(field: 'contractedRate', value: 98.0),
          TableRowCells(field: 'variance', value: 2.0),
          TableRowCells(field: 'collectionTime', value: '10:30 AM'),
          TableRowCells(field: 'location', value: 'Location A'),
          TableRowCells(field: 'teamResponsible', value: 'Team Alpha'),
          TableRowCells(field: 'collectedBy', value: 'John Doe'),
          TableRowCells(field: 'cashControl', value: 'Cashier 1'),
        ],
      ),
  ],
);

extension on TableColumnType {
  PlutoColumnType get toPlutoColumnType {
    return switch (this) {
      TableColumnType.text => PlutoColumnType.text(),
      TableColumnType.number => PlutoColumnType.number(),
      TableColumnType.date => PlutoColumnType.date(),
      TableColumnType.time => PlutoColumnType.time()
    };
  }
}

class TableHeader {
  final String title;
  final String field;
  final TableColumnType type;

  // final bool enableFilterMenuItem;

  TableHeader({
    required this.title,
    required this.field,
    required this.type,
    // this.enableFilterMenuItem = true,
  });
}

class TableData {
  final List<TableHeader> headers;
  final List<TableRowData> rows;

  TableData({
    required this.headers,
    required this.rows,
  });
}

class CustomPlutoTable extends StatelessWidget {
  final TableData? data;
  final BoxConstraints? constraints;
  final bool? isExpanded;
  final Function(PlutoGridOnLoadedEvent)? onLoaded;
  final Function(PlutoGridOnSelectedEvent)? onSelected;
  final Function(PlutoGridOnChangedEvent)? onChanged;

  const CustomPlutoTable({
    super.key,
    this.data,
    this.constraints,
    this.isExpanded = false,
    this.onLoaded,
    this.onSelected,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final tableData = data ??
        TableData(
          headers: [
            TableHeader(
                title: 'Customer Id',
                field: 'Customer Id',
                type: TableColumnType.text),
            TableHeader(
                title: 'Customer Name',
                field: 'Customer Name',
                type: TableColumnType.text),
            TableHeader(
                title: 'Customer Age',
                field: 'Customer Age',
                type: TableColumnType.text),
            TableHeader(
                title: 'Branch Code',
                field: 'Branch Code',
                type: TableColumnType.text),
          ],
          rows: [
            TableRowData(
              cells: [
                TableRowCells(field: 'Customer Id', value: "123"),
                TableRowCells(field: 'Customer Name', value: "Murad"),
                TableRowCells(field: 'Customer Age', value: "23"),
                TableRowCells(field: 'Branch Code', value: "19012"),
              ],
            ),
            TableRowData(
              cells: [
                TableRowCells(field: 'Customer Id', value: "123"),
                TableRowCells(field: 'Customer Name', value: "Murad"),
                TableRowCells(field: 'Customer Age', value: "23"),
                TableRowCells(field: 'Branch Code', value: "19012"),
              ],
            ),
          ],
        );
    return ConstrainedBox(
      constraints: constraints ?? const BoxConstraints(),
      child: PlutoGrid(
        configuration: PlutoGridConfiguration(
          columnSize: PlutoGridColumnSizeConfig(
            autoSizeMode: isExpanded!
                ? PlutoAutoSizeMode.equal
                : PlutoAutoSizeMode.none, // Disable auto-sizing
            // Adjust ratio between the columns
          ),
          enableMoveHorizontalInEditing: false,
          style: PlutoGridStyleConfig(
            cellTextStyle: AppTheme.primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w200,
              color: AppColors.kPrimaryBlack,
            ),
            gridBorderColor: Colors.transparent,
            borderColor: Colors.transparent,
            columnTextStyle: AppTheme.primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.kPrimaryBlack,
            ),
            gridBorderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(6),
              bottomRight: Radius.circular(6),
            ),
            oddRowColor: const Color(0xffDFF4FF),
            evenRowColor: Colors.purple,
            columnHeight: 30,
            rowHeight: 30,
          ),
        ),
        mode: PlutoGridMode.selectWithOneTap,
        onSelected: onSelected,
        onLoaded: onLoaded,
        columns: _buildColumns(tableData),
        rows: _buildRows(tableData),
        onChanged: onChanged,
      ),
    );
  }

  // Build columns dynamically from the headers in the passed TableData
  List<PlutoColumn> _buildColumns(TableData tableData) {
    return tableData.headers.map((header) {
      return PlutoColumn(
        textAlign: PlutoColumnTextAlign.start,
        title: header.title,
        field: header.field,
        type: header.type.toPlutoColumnType,
        enableFilterMenuItem: false,
        enableSorting: false,
        enableDropToResize: false,
        enableRowDrag: false,
        enableContextMenu: false,
      );
    }).toList();
  }

  // Build rows dynamically from the row data in the passed TableData
  List<PlutoRow> _buildRows(TableData tableData) {
    return tableData.rows
        .map(
          (row) => PlutoRow(
            cells: {
              for (var cell in row.cells)
                cell.field: PlutoCell(
                  value: cell.value,
                ),
            },
          ),
        )
        .toList();
  }
}
